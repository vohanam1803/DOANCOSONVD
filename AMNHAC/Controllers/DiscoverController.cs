using System;
using System.Collections.Generic;
using System.Dynamic;
using System.IO;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using AMNHAC.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using VideoLibrary;

namespace AMNHAC.Controllers
{
    public class DiscoverController : Controller
    {
        // GET: Discover

        DataClasses1DataContext data = new DataClasses1DataContext();
        private ApplicationUserManager _userManager;
        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }




        [HttpPost]
        public string ProcessUpload(HttpPostedFileBase file)
        {
            if (file == null)
            {
                return "";
            }
            file.SaveAs(Server.MapPath("~/Content/music/" + file.FileName));
            return "/Content/music/" + file.FileName;
        }
        [Authorize]
        public ActionResult IndexDiscover()
        {

            dynamic mymodel = new ExpandoObject();
            var userId = User.Identity.GetUserId();
            var user = from ss in data.AspNetUsers where ss.Id == userId select ss;
            var baiviet = from ss in data.BaiViets where ss.chedo == "CK" orderby ss.newday descending select ss;
            mymodel.user = user;
            mymodel.baiviet = baiviet;


            /*var getget = get();*/

            /* var all_playlist = data.Videos.ToList();*/

            return View(/*getget*/mymodel);
        }
        //Cập nhật lại playlist tren trang cá nhân
        public List<Models.Video> get()
        {
            var userId = User.Identity.GetUserId();
            var get = (from ss in data.Videos where ss.UserId == userId && ss.loaivideo == "user" select ss).ToList();
            for (var item = 0; item < get.Count; item++)
            {
                get[item].NguonVideo = GetUrlVideoYoutube(get[item].HinhNguonVideo);
                UpdateModel(get[item]);
            }
            data.SubmitChanges();
            return get;
        }
        [HttpGet]
        public JsonResult listVD()
        {

            var userId = User.Identity.GetUserId();


            try
            {
                var dsdata = (from ss in data.Videos where ss.UserId == userId && ss.loaivideo == "user" select new { Id = ss.id, title = ss.title, author = ss.author, file = ss.NguonVideo, image = ss.HinhNguonVideo }).ToArray();
                return Json(dsdata, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { code = 500, msg = "Fail!" + ex.Message, JsonRequestBehavior.AllowGet });
            }

        }


        public ActionResult VideoPlay()
        {
            var video = data.links.ToList();
            return View(video);
        }

        [Authorize]
        public ActionResult Test()
        {

            return View();
        }
        [HttpPost]
        public ActionResult CreateTest(FormCollection fr)
        {
            var userId = User.Identity.GetUserId();

            var gettitle = fr["title"];
            var getmota = fr["mota"];
            var getvideo = fr["hinh"];
            var getchedo = fr["chedo"];
            var gethinh = fr["hinh1"];


            var check = new BaiViet();
            check.title = gettitle;
            check.Mota = getmota;
            check.video = getvideo;
            check.chedo = getchedo;
            check.UserId = userId;
            check.newday = DateTime.Now;
            check.image = gethinh;
            if (check.Mota == "")
            {
                ViewBag.Message = "Mô Tả Is Not Null!!";
                return View("~/Views/Discover/Test.cshtml");
            }
            if (check.chedo == "")
            {
                ViewBag.Message = "Check Your Chế Độ!!";
                return View("~/Views/Discover/Test.cshtml");
            }
            data.BaiViets.InsertOnSubmit(check);
            data.SubmitChanges();
            var get = data.BaiViets.ToList();
            ViewBag.Message = "Đăng Thành Công!!";
            return View("~/Views/Discover/Test.cshtml");
        }


        public async Task<ActionResult> GetUrlVideo()
        {
            var currentClaims = await UserManager.GetClaimsAsync(HttpContext.User.Identity.GetUserId());

            var accesstoken = currentClaims.FirstOrDefault(x => x.Type == "urn:tokens:facebook");  //currentClaims.FirstOrDefault(x => x.Type == "urn:tokens:facebook")

            if (accesstoken == null)
            {
                var userId = User.Identity.GetUserId();
                var checkuser = from ss in data.AspNetUsers where ss.Id == userId select ss;

                var videoProfile = data.Videos.FirstOrDefault(m => m.UserId == userId);
                var check = from ss in data.Videos where ss.loaivideo == "user" && ss.UserId == userId select ss;
                dynamic mymodel = new ExpandoObject();
                mymodel.user = checkuser;
                mymodel.video = check;
                if (videoProfile == null)
                {
                    ViewBag.Message = "You Not Have Anything In Playlist";
                    return View(mymodel);
                }
                else
                {
                    ViewBag.Message = "Your Playlist";
                    return View(mymodel);
                }
                 /*(new HttpStatusCodeResult(HttpStatusCode.NotFound, "Token not found"))*/;
            }
            string url = String.Format("https://graph.facebook.com/v14.0/me?fields=id,name,picture,email&access_token={0}", accesstoken.Value);
            HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;

            request.Method = "GET";

            using (HttpWebResponse response = await request.GetResponseAsync() as HttpWebResponse)
            {
                StreamReader reader = new StreamReader(response.GetResponseStream());

                string result = await reader.ReadToEndAsync();

                dynamic jsonObj = System.Web.Helpers.Json.Decode(result);
                Models.Facebook facebook = new Models.Facebook(jsonObj);
                ViewBag.JSON = result;

                var userId = User.Identity.GetUserId();

                var getUserdata = data.AspNetUsers.ToList();
                for (var item = 0; item < getUserdata.Count; item++)
                {
                    if (getUserdata[item].Id == userId)
                    {
                        getUserdata[item].UserName = facebook.name;
                        getUserdata[item].Name = facebook.picture.data.url;
                    }
                }

                ///

                var checkuser = from ss in getUserdata where ss.Id == userId select ss;

                var videoProfile = data.Videos.FirstOrDefault(m => m.UserId == userId);
                var check = from ss in data.Videos where ss.loaivideo == "user" && ss.UserId == userId select ss;
                dynamic mymodel = new ExpandoObject();
                mymodel.user = checkuser;
                mymodel.video = check;
                if (videoProfile == null)
                {
                    ViewBag.Message = "You Not Have Anything In Playlist";
                    return View(mymodel);
                }
                else
                {
                    ViewBag.Message = "Your Playlist";
                    return View(mymodel);
                }

            }

        }
        public string GetUrlVideoYoutube(string nguongoc)
        {
            var VedioUrl = "https://www.youtube.com/embed/" + nguongoc + ".mp4";
            var youTube = YouTube.Default;
            var video = youTube.GetVideo(VedioUrl);
            string get = video.Uri;
            return get;
        }


        [HttpPost]
        public ActionResult DeleteBaiViet(FormCollection collection)
        {
            var IdPost = int.Parse(collection["Id"]);
            var D_playlist = data.BaiViets.Where(m => m.idPost == IdPost).First();
            data.BaiViets.DeleteOnSubmit(D_playlist);
            data.SubmitChanges();

            dynamic mymodel = new ExpandoObject();
            var userId = User.Identity.GetUserId();
            var user = from ss in data.AspNetUsers where ss.Id == userId select ss;
            var baiviet = from ss in data.BaiViets where ss.chedo == "CK" orderby ss.newday descending select ss;
            mymodel.user = user;
            mymodel.baiviet = baiviet;
            return View("~/Views/Discover/IndexDiscover.cshtml", mymodel);
        }

        [HttpPost]
        public ActionResult SearchBaiViet(FormCollection collection)
        {
            string timkiem = collection["Id"];
            if(timkiem == null || timkiem =="")
            {
                return RedirectToAction("IndexDiscover");
            }
            var D_playlist = data.BaiViets.ToList();
            
            /*var list = new List<Video>(D_playlist.Count);*/
            for (var item = 0; item < D_playlist.Count; item++)
            {
                if (D_playlist[item].title.Contains(timkiem))
                {
                    D_playlist[item].chedotimkiem = 1;
                  
                }
            }
            /* var list = from ss in D_playlist where ss.Mota == "1" && ss.chedo == "CK" orderby ss.newday descending select ss;*/

            dynamic mymodel = new ExpandoObject();
            var userId = User.Identity.GetUserId();
            var user = from ss in data.AspNetUsers where ss.Id == userId select ss;
            var baiviet = from ss in D_playlist where ss.chedotimkiem == 1 && ss.chedo == "CK" orderby ss.newday descending select ss;
            mymodel.user = user;
            mymodel.baiviet = baiviet;
            return View("~/Views/Discover/IndexDiscover.cshtml", mymodel);

        }
    }
}