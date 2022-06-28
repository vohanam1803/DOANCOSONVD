using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using AMNHAC.Models;
using Microsoft.AspNet.Identity;

using System.Web.Helpers;
using System.Security.Cryptography;
using System.Text;

namespace AMNHAC.Controllers
{
    public class UserController : Controller
    {
        DataClasses1DataContext data = new DataClasses1DataContext();
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

        public ActionResult Account()
        {
            var userId = User.Identity.GetUserId();
            if (checkUserorAdmin() == false || userId == "")
            {
                ViewBag.Message = "Bạn Không Có Quyền Hạn Này cho tài khoản";
                return View("~/Views/MyMusicProfile/Post.cshtml");
            }
            else
            {
                var all_user = from ss in data.AspNetUsers select ss;
                return View(all_user);
            }
        }

        public ActionResult Edit(string id)
        {


            var all_user = data.AspNetUsers.SingleOrDefault(n => n.Id == id);
            return View(all_user);

        }

        public ActionResult Delete(string id)
        {

            var deleteUserVideo = (data.Videos.Where(n => n.UserId == id)).ToList();
            for (var item = 0; item < deleteUserVideo.Count; item++)
            {
                if (deleteUserVideo[item].UserId == id)
                {
                    data.Videos.DeleteOnSubmit(deleteUserVideo[item]);
                }
            }
            var deleteUserPost = (data.BaiViets.Where(n => n.UserId == id)).ToList();
            for (var item = 0; item < deleteUserPost.Count; item++)
            {
                if (deleteUserPost[item].UserId == id)
                {
                    data.BaiViets.DeleteOnSubmit(deleteUserPost[item]);
                }
            }



            var all_user = data.AspNetUsers.SingleOrDefault(n => n.Id == id); ;
            data.AspNetUsers.DeleteOnSubmit(all_user);
            data.SubmitChanges();
            return RedirectToAction("Account");


        }

        public ActionResult Details(string id)
        {

            var user = from s in data.AspNetUsers where s.Id == id select s;
            var video = from s in data.Videos where s.UserId == id && s.loaivideo == "user" select s;
            var userId = User.Identity.GetUserId();
            var getUserdata = data.AspNetUsers.ToList();

            dynamic mymodel = new ExpandoObject();
            mymodel.user = user;
            mymodel.video = video;
            return View(mymodel);


        }
        [HttpPost]
        public ActionResult EditUser(FormCollection form)
        {
            var id = form["Id"];
            var pw = form["name"];
            var username = form["mota"];

            var pwhash = Hash.getpass(pw);
            var userlist = data.AspNetUsers.ToList();
            for (var item = 0; item < userlist.Count; item++)
            {
                if (userlist[item].Id == id)
                {
                    userlist[item].PasswordHash = pwhash;

                    userlist[item].Name = username;

                }
            }
            data.SubmitChanges();
            return RedirectToAction("Account");
        }
        //--------------------băm password.cs-------------------
        public class Hash
        {
            public static string getpass(string password)
            {
                using(MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
                {
                    byte[] b = System.Text.Encoding.UTF8.GetBytes(password);
                    b = md5.ComputeHash(b);
                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    foreach (byte x in b)
                        sb.Append(x.ToString("x2"));
                    return sb.ToString();
                }
            }
        }
        public class customHash : IPasswordHasher
        {
            public string HashPassword(string password)
            {
                return Hash.getpass(password);
            }

            public PasswordVerificationResult VerifyHashedPassword(string hashedPassword, string providedPassword)
            {
                if (hashedPassword == HashPassword(providedPassword))
                    return PasswordVerificationResult.Success;
                else
                    return PasswordVerificationResult.Failed;
            }
        }
    }
}