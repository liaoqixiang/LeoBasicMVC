using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LeoProjectUI.Areas.Admin.Controllers
{
    [Authorize(Roles ="A")]
    public class BaseAdminController:Controller
    {
        public tbl_CategoryDAL tbl_CategoryDAL { get; set; }
        public tbl_UserDAL tbl_UserDAL { get; set; }
        public tbl_UrlDAL tbl_UrlDAL { get; set; }
        public LinkHubDBEntities db { get; set; }
        public BaseAdminController()
        {
            tbl_CategoryDAL = new tbl_CategoryDAL();
            tbl_UserDAL = new tbl_UserDAL();
            tbl_UrlDAL = new tbl_UrlDAL();
            db = Utility.DbContextFactory.CreateSingleDbcontext() as LinkHubDBEntities;
        }
    }
}