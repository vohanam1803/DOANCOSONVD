using AMNHAC.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Dynamic;
using System.IO;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using VideoLibrary;

namespace AMNHAC.Controllers
{
    [Authorize]
    public class MyMusicProfileController : Controller
    {

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

        // GET: MyMusicProfile
        /*public ActionResult Index()
        {
            var userId = User.Identity.GetUserId();
            var checkuser = from ss in data.AspNetUsers where ss.Id == userId select ss;

            var videoProfile = data.Videos.ToList();
            var check = from ss in data.Videos where ss.loaivideo == "user" && ss.UserId == userId select ss;
            dynamic mymodel = new ExpandoObject();
            mymodel.user = checkuser;
            mymodel.video = check;
            if (videoProfile.Count == 0)
            {
                ViewBag.Message = "You Not Have Anything In Playlist";
                return View(mymodel);
            }
            else
            {
                ViewBag.Message = "Your Playlist";
                return View(mymodel);
            }
        }*/
        /*public ActionResult DetelePlaylist(string id)
        {
            var D_playlist = data.Videos.Where(m => m.id == id).First();
            return View();
        }
        [HttpPost]
        public ActionResult DetelePlaylist(string id, FormCollection collection)
        {
            var D_playlist = data.Videos.Where(m => m.id == id).First();
            data.Videos.DeleteOnSubmit(D_playlist);
            data.SubmitChanges();
            return RedirectToAction("Test");
        }*/
       
        
        

        public async Task<ActionResult> Index()
        {
            var currentClaims = await UserManager.GetClaimsAsync(HttpContext.User.Identity.GetUserId());

            var accesstoken = currentClaims.FirstOrDefault(x => x.Type == "urn:tokens:facebook");  //currentClaims.FirstOrDefault(x => x.Type == "urn:tokens:facebook")
            var getget = get();
            if (accesstoken == null)
            {
                var userId = User.Identity.GetUserId();
                var checkuser = from ss in data.AspNetUsers where ss.Id == userId select ss;

                var videoProfile = data.Videos.FirstOrDefault(m => m.UserId == userId);
                var check = /*from ss in data.Videos where ss.loaivideo == "user" && ss.UserId == userId select ss*/getget;
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

                /*var getUserdata = data.AspNetUsers.ToList();
                for(var item = 0;item<getUserdata.Count;item++)
                {
                    if(getUserdata[item].Id == userId)
                    {
                        getUserdata[item].Name = facebook.name;
                        getUserdata[item].Avatar = facebook.picture.data.url;
                    }
                }
                data.SubmitChanges();*/
                
                ///

                var checkuser = from ss in data.AspNetUsers where ss.Id == userId  select ss; 

                var videoProfile = data.Videos.FirstOrDefault(m => m.UserId == userId);
                var check = /*from ss in data.Videos where ss.loaivideo == "user" && ss.UserId == userId select ss*/getget;
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
        public bool checkUserorAdmin()
        {
            var userId = User.Identity.GetUserId();
            var getDataUser = data.AspNetUserLogins.ToList();
            for (var item = 0; item < getDataUser.Count; item++)
            {
                if (getDataUser[item].UserId == userId)
                {
                    if (getDataUser[item].LoginProvider == "Facebook")
                    {
                        return true;
                    }
                }
            }
            return false;
        }
        [HttpPost]
        public ActionResult Post()
        {
            if(checkUserorAdmin() == false)
            {
                ViewBag.Message = "Bạn Không Có Quyền Hạn Này cho tài khoản";
                return View();
            }
            else
            {
                ViewBag.Message = "Xin Chào Admin";
                return View("~/Views/Home/TrangAdmin.cshtml");
            }
            
        }
        [Authorize]
        [HttpPost]
        public ActionResult ThayAvatar()
        {
            var userId = User.Identity.GetUserId();
            var checkuser = from ss in data.AspNetUsers where ss.Id == userId select ss;
            return View(checkuser);
        }
        
        [HttpPost]
        public async Task<ActionResult> EditAvatar(FormCollection form)
        {
            var avatar = form["hinh"];
            var name = form["name"];
            var userId = User.Identity.GetUserId();
            var checkuser1 = (from ss in data.AspNetUsers where ss.Id == userId select ss).ToList();
            var getget = get();
            for (var item = 0;item<checkuser1.Count;item++)
            {
                checkuser1[item].Avatar = avatar;
                checkuser1[item].Name = name;
            }
            data.SubmitChanges();

            var currentClaims = await UserManager.GetClaimsAsync(HttpContext.User.Identity.GetUserId());

            var accesstoken = currentClaims.FirstOrDefault(x => x.Type == "urn:tokens:facebook");  //currentClaims.FirstOrDefault(x => x.Type == "urn:tokens:facebook")

            if (accesstoken == null)
            {
                
                var checkuser = from ss in data.AspNetUsers where ss.Id == userId select ss;

                var videoProfile = data.Videos.FirstOrDefault(m => m.UserId == userId);
                var check = /*from ss in data.Videos where ss.loaivideo == "user" && ss.UserId == userId select ss*/getget;
                dynamic mymodel = new ExpandoObject();
                mymodel.user = checkuser;
                mymodel.video = check;
                if (videoProfile == null)
                {
                    ViewBag.Message = "You Not Have Anything In Playlist";
                    return View("~/Views/MyMusicProfile/Index.cshtml", mymodel);
                }
                else
                {
                    ViewBag.Message = "Your Playlist";
                    return View("~/Views/MyMusicProfile/Index.cshtml",mymodel);
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

               

                /*var getUserdata = data.AspNetUsers.ToList();
                for(var item = 0;item<getUserdata.Count;item++)
                {
                    if(getUserdata[item].Id == userId)
                    {
                        getUserdata[item].Name = facebook.name;
                        getUserdata[item].Avatar = facebook.picture.data.url;
                    }
                }
                data.SubmitChanges();*/

                ///

                var checkuser = from ss in data.AspNetUsers where ss.Id == userId select ss;

                var videoProfile = data.Videos.FirstOrDefault(m => m.UserId == userId);
                var check = /*from ss in data.Videos where ss.loaivideo == "user" && ss.UserId == userId select ss*/getget;
                dynamic mymodel = new ExpandoObject();
                mymodel.user = checkuser;
                mymodel.video = check;
                if (videoProfile == null)
                {
                    ViewBag.Message = "You Not Have Anything In Playlist";
                    return View("~/Views/MyMusicProfile/Index.cshtml", mymodel);
                }
                else
                {
                    ViewBag.Message = "Your Playlist";
                    return View("~/Views/MyMusicProfile/Index.cshtml", mymodel);
                }

            }
        }
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
        public string GetUrlVideoYoutube(string nguongoc)
        {
            var VedioUrl = "https://www.youtube.com/embed/" + nguongoc + ".mp4";
            var youTube = YouTube.Default;
            var video = youTube.GetVideo(VedioUrl);
            string get = video.Uri;
            return get;
        }
    }
}