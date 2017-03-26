using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Security;
namespace LeoProjectUI.Areas.Account.Controllers
{
    [AllowAnonymous]
    public class LoginController : Controller
    {
        LinkHubMembershipProvide lms = new LinkHubMembershipProvide();
        // GET: Account/Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(tbl_User user)
        {
            if (Membership.ValidateUser(user.UserEmail, user.Password))
            {
                FormsAuthentication.SetAuthCookie(user.UserEmail, false);
                return RedirectToAction("Index", "Home", new { area = "CommonVisit" });
            }
            else
            {
                TempData["Msg"] = "Login Failed  ";
                return RedirectToAction("Index");
            }
            
        }
      
        public ActionResult SignOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Home", new { area = "CommonVisit" });
        }
    }
}