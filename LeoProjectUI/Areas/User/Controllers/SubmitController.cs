using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using DAL;

namespace LeoProjectUI.Areas.User.Controllers
{
    
    public class SubmitController : BaseController
    {
        // GET: User/Submit
        public ActionResult Index()
        {
            ViewBag.CategoryId = new SelectList(tbl_CategoryDAL.GetListBy(c=>true), "CategoryId", "CategoryName");
            ViewBag.UserId = new SelectList(db.tbl_User, "UserId", "UserEmail");
            return View();
        }
        [HttpPost]
        public ActionResult Create(tbl_Url Fucking)
        {
            Fucking.IsApproved = "P";
            Fucking.UserId = db.tbl_User.Where(c => c.UserEmail == User.Identity.Name).SingleOrDefault().UserId;
            if (ModelState.IsValid)
            {
                tbl_UrlDAL.Add(Fucking);
                ViewBag.msg = "Create Successfully";
                return RedirectToAction("Index");
            }
            else
            {
                ViewBag.CategoryId = new SelectList(db.tbl_Category, "CategoryId", "CategoryName");
                return RedirectToAction("Index");
            }
            
        }
    }
}