using Model;
using System.Web;
using System.Web.Mvc;

namespace LeoProjectUI
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new MyExceptionAttribute());
            filters.Add(new AuthorizeAttribute());
        }
    }
}
