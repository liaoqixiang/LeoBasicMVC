using System.Web.Mvc;

namespace LeoProjectUI.Areas.CommonVisit
{
    public class CommonVisitAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "CommonVisit";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "CommonVisit_default",
                "CommonVisit/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}