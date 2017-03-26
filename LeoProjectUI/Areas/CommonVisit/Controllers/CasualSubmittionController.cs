using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using Security;
namespace LeoProjectUI.Areas.CommonVisit.Controllers
{
    
    [AllowAnonymous]
    public class CasualSubmittionController : BaseController
    {
        CommonMethod cm = new CommonMethod();
        // GET: CommonVisit/CasualSubmittion
        public ActionResult Index()
        {
            ViewBag.CategoryId = new SelectList(tbl_CategoryDAL.GetListBy(c => true), "CategoryId", "CategoryName");

            return View();
        }
        [HttpPost]
        public ActionResult Submit(CasualSubmitViewModel submitmodel)
        {
            ModelState.Remove("casualuser.Password");
            ModelState.Remove("casualuser.UserEmail");
            if (ModelState.IsValid)
            {
                cm.InsertCasualSubmitModel(submitmodel);
            }
            else
            {
                ViewBag.CategoryId = new SelectList(tbl_CategoryDAL.GetListBy(c => true), "CategoryId", "CategoryName");
                return View("Index");
            }

            return RedirectToAction("Index");
        }
    }
}