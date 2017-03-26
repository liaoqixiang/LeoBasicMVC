using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
namespace Model
{
    public class MyExceptionAttribute:HandleErrorAttribute
    {
        public static Queue<Exception> ExceptionQueue = new Queue<Exception>();
        public override void OnException(ExceptionContext filterContext)
        {
            base.OnException(filterContext);
            ExceptionQueue.Enqueue(filterContext.Exception);
            filterContext.HttpContext.Response.Redirect("/Error.html");
        }
    }
}
