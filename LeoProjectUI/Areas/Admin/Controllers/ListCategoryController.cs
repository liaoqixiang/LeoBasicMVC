using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DAL;
using Model;
using System.Data.Entity;
using Utility;

namespace LeoProjectUI.Areas.Admin.Controllers
{
    public class ListCategoryController : BaseAdminController
    {
        
        // GET: Admin/ListCategory
        public ActionResult Index(string SortOrder, string SortBy)
        {

            int totalcount = 0;
            int totalnum = 0;
            int pageSize = 5;
            int pageIndex = Convert.ToInt32(Request["pageIndex"]);
            double TotalPage;
            pageIndex = pageIndex == 0 ? 1 : pageIndex;
            ViewBag.pageIndex = pageIndex;
            ViewBag.SortOrder = SortOrder;
            SortOrder = SortOrder == null ? "" : SortOrder;
            Func<tbl_Category, bool> whereclause = (c => true);
            Func<tbl_Category, string> orderclause = null;
            switch (SortBy)
            {
                case "CategoryName":
                    orderclause = (c => c.CategoryName);
                    ViewBag.SortBy = SortBy;
                    break;

            }
            var list = tbl_CategoryDAL.GetPagedList(pageIndex, pageSize, whereclause, orderclause, out totalnum, out totalcount, SortOrder);
            TotalPage = Math.Ceiling(((double)totalcount) / 5);
            ViewBag.pageIndex = pageIndex;
            ViewBag.TotalPage = TotalPage;
            return View(list);
        }
        public ActionResult Delete(int id)
        {
            ViewBag.msg = tbl_CategoryDAL.Del(db.tbl_Category.SingleOrDefault(c => c.CategoryId == id)) == true ? "Delete Successfully" : "failed";
            return RedirectToAction("Index");
        }
        public ActionResult Create()
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
                ViewBag.errormsg = "add failed";
                return View();
            }

        }

        public ActionResult Edit(int id)
        {
            var category = db.tbl_Category.SingleOrDefault(c => c.CategoryId == id);
            return View(category);
        }
        [HttpPost]
        public ActionResult Editpost(tbl_Category category)
        {
            
            if (ModelState.IsValid)
            {
                if (category.CategoryDesc == null)
                {
                    category.CategoryDesc = "";
                }

                tbl_CategoryDAL.Modify(category);
                return RedirectToAction("Index");
            }
            else
            {
                ViewBag.errormsg = "Edit failed";
                return View("Edit");
            }

        }
    }
}