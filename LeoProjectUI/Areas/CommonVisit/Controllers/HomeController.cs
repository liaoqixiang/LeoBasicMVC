using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LeoProjectUI.Areas.CommonVisit.Controllers
{
    [AllowAnonymous]
    public class HomeController : Controller
    {
        // GET: CommonVisit/Home
        public ActionResult Index()
        {
            return View();
        }
    }
}