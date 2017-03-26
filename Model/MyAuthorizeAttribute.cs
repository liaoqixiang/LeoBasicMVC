using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
namespace Model
{
   public class MyAuthorizeAttribute:AuthorizeAttribute
    {
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            bool skipAuthorization = filterContext.ActionDescriptor.IsDefined(typeof(AllowAnonymousAttribute), inherit: true)
    || filterContext.ActionDescriptor.ControllerDescriptor.IsDefined(
        typeof(AllowAnonymousAttribute), inherit: true);

            if (skipAuthorization)
            {
                return;
            }
           
            base.OnAuthorization(filterContext);
            filterContext.HttpContext.Response.Redirect("/Authorize.html");
        }

        
    }
}
