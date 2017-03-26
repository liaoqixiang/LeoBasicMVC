using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LeoProjectUI.Areas.CommonVisit.Controllers
{
    [AllowAnonymous]
    public class AboutController : Controller
    {
        // GET: CommonVisit/About
        public ActionResult Index()
        {
            return View();
        }
    }
}