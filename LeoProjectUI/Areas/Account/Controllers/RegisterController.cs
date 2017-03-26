using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LeoProjectUI.Areas.Account.Controllers
{
    [AllowAnonymous]
    public class RegisterController : BaseController
    {
        // GET: Account/Register
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(tbl_User user)
        {
            if (ModelState.IsValid)
            {
                user.Role = "U";
                tbl_UserDAL.Add(user);
                return RedirectToAction("Index");
            }
            return View("Index");
            
        }
    }
}