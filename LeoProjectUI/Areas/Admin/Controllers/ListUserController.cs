using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LeoProjectUI.Areas.Admin.Controllers
{
    public class ListUserController : BaseAdminController
    {
        // GET: Admin/ListUser
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
            Func<tbl_User, bool> whereclause = (c => true);
            Func<tbl_User, string> orderclause = null;
            switch (SortBy)
            {
                case "UserEmail":
                    orderclause = (c => c.UserEmail);
                    ViewBag.SortBy = SortBy;
                    break;

            }
            var list = tbl_UserDAL.GetPagedList(pageIndex, pageSize, whereclause, orderclause, out totalnum, out totalcount, SortOrder);
            TotalPage = Math.Ceiling(((double)totalcount) / 5);
            ViewBag.pageIndex = pageIndex;
            ViewBag.TotalPage = TotalPage;
            return View(list);
        }
    }
}