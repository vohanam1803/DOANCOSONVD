﻿using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AMNHAC.Models;
using Microsoft.AspNet.Identity;

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

    }


}