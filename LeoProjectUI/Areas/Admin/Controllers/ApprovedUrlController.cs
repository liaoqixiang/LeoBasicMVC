using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using UtilityClass;
namespace LeoProjectUI.Areas.Admin.Controllers
{
    public class ApprovedUrlController : BaseAdminController
    {
        // GET: Admin/ApprovedUrl
        public ActionResult Index(string CheckState)
        {
            List<tbl_Url> list = GetList(CheckState);
            return View(list);

        }
        /// <summary>
        /// core method of approving or rejecting url
        /// </summary>
        /// <param name="id">approve or reject one url</param>
        /// <param name="state">decide whether should be approved or rejected</param>
        /// <param name="ItemList">approve or reject many url</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Approve(int id, string state, int[] ItemList)
        {
            List<tbl_Url> list = null;
            if (id != 0)
            {
                switch (state)
                {
                    case "Approve":
                        CheckState(id, "A");

                        break;
                    case "Reject":
                        CheckState(id, "R");
                        break;
                }
                db.SaveChanges();
                ViewBag.msg = "good";
                return PartialView("PartialApprovedView", list);
            }
            else
            {
                for (int i = 0; i < ItemList.Length; i++)
                {
                    switch (state)
                    {
                        case "Approve":
                            CheckState(ItemList[i], "A");
                            break;
                        case "Reject":
                            CheckState(ItemList[i], "R");
                            break;
                    }
                }
                CheckValidate.NotValidate = true;
                db.SaveChanges();
            }
            switch (state)
            {
                case "Approve":
                    list = GetList("Rejected");
                    break;
                case "Reject":
                    list = GetList("Approved");
                    break;
            }
            ViewBag.msg = "good";
            return PartialView("PartialApprovedView", list);
        }

        private void CheckState(int id, string state)
        {
            var urlmodel = db.tbl_Url.SingleOrDefault(c => c.UrlId == id);
            if (urlmodel.IsApproved == state)
            {
                return;
            }
            urlmodel.IsApproved = state;
            CheckValidate.NotValidate = true;
            tbl_UrlDAL.Modify(urlmodel);


        }
        private List<tbl_Url> GetList(string CheckState)
        {
            //this four value is to fit the method i wrote for getting paginated list.
            int totalcount = 0;
            int totalnum = 0;
            int pageSize = 5;
            double TotalPage;
            
            int pageIndex = Convert.ToInt32(Request["pageIndex"]);//get the index.
            pageIndex = pageIndex == 0 ? 1 : pageIndex;//check index if it needs pagination.
            ViewBag.pageIndex = pageIndex; //store it into viewbag for the page helper to get the page index for page bar
            CheckState = CheckState == null ? "Pending" : CheckState;//set the default checkstate as Pending
            ViewBag.CheckState = CheckState;//store state of url to get the corresponding url paginated list.
            
            //first define two Func delegate 
            Func<tbl_Url, bool> whereclause = null;
            Func<tbl_Url, string> orderclause = null;
            
            
            switch (CheckState)//to get the corresponding list with different state of url.
            {
                case "Pending":
                    whereclause = (c => c.IsApproved == "P");
                    break;
                case "Approved":
                    whereclause = (c => c.IsApproved == "A");
                    break;
                case "Rejected":
                    whereclause = (c => c.IsApproved == "R");
                    break;
            }
            var list = tbl_UrlDAL.GetPagedList(pageIndex, pageSize, whereclause, orderclause, out totalnum, out totalcount, "");
            TotalPage = Math.Ceiling(((double)totalcount) / 5);
            ViewBag.TotalPage = TotalPage;
            return list;
        }
    }
}