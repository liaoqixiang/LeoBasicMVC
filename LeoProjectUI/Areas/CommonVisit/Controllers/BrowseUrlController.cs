using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DAL;
using Model;
namespace LeoProjectUI.Areas.CommonVisit.Controllers
{
    [AllowAnonymous]
    public class BrowseUrlController : BaseController
    {
       // GET: CommonVisit/BrowseUrl
        public ActionResult Index(string SortOrder,string SortBy)
        {
            int totalcount=0;
            int totalnum=0;
            int pageSize = 5;
            //get the index.
            int pageIndex = Convert.ToInt32(Request["pageIndex"]);
            double TotalPage;
            pageIndex = pageIndex == 0 ? 1 : pageIndex;
            
            ViewBag.pageIndex = pageIndex;
            
            //give the value to viewbag, pass it to cshtml.
            ViewBag.SortOrder = SortOrder;
            ViewBag.SortOrder1 = SortOrder;

            //check if it has sorting.
            SortOrder = SortOrder == null ? "" : SortOrder;

            Func<tbl_Url, bool> whereclause = (c => c.IsApproved == "A");
            Func<tbl_Url, string> orderclause = null;
            switch (SortBy)
            {
                case "UrlTitle":
                    orderclause = (c => c.UrlTitle);
                    ViewBag.SortBy = SortBy;
                    break;
                case "Url":
                    orderclause = (c => c.Url);
                    ViewBag.SortBy = SortBy;
                    break;
            }
            var list = tbl_UrlDAL.GetPagedList(pageIndex, pageSize, whereclause, orderclause, out totalnum, out totalcount, SortOrder);
            TotalPage = Math.Ceiling(((double)totalcount) / 5);
            ViewBag.pageIndex = pageIndex;
            ViewBag.TotalPage = TotalPage;
            

            return View(list);
        }
        
    }
}