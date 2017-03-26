using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using DAL;
using System.Data.Entity;
using Utility;

namespace LeoProjectUI.Areas.Admin.Controllers
{
    public class CategoryController : BaseAdminController
    {
       
        // GET: Admin/Category
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(tbl_Category category)
        {
            if (ModelState.IsValid)
            {
                tbl_CategoryDAL.Add(category);
                return RedirectToAction("Index");
            }
            else
            {
                return View("Index");
            }
            
        }
    }
}