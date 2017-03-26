using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
namespace UtilityClass
{
    public class PageBarHelper
    {
        public static string PageBar(object page, object Sort, string CheckState)
        {
            string sortorder;
            string sortby;
            var pageInfo = page.GetType().GetProperties();
          
            var pageIndex = int.Parse(pageInfo[0].GetValue(page).ToString());
            var totalpage = double.Parse(pageInfo[1].GetValue(page).ToString());
            if (Sort != null)
            {
                var SortInfo = Sort.GetType().GetProperties();
                if(SortInfo[0].GetValue(Sort) != null&& SortInfo[1].GetValue(Sort) != null)
                {
                    sortorder = SortInfo[0].GetValue(Sort).ToString();
                    sortby = SortInfo[1].GetValue(Sort).ToString();
                }
                else
                {
                    sortorder = "";
                    sortby = "";
                }
                
            }
            else
            {
                sortorder = "";
                sortby = "";
            }
            if (totalpage == 1)
            {
                return string.Empty;
            }
            StringBuilder sb = new StringBuilder();
            //计算起始位置与终止位置
            double start = pageIndex - 3;//显示10个数字页码
            if (start < 1)
            {
                start = 1;
            }
            double end = start + 9;
            if (end > totalpage)
            {
                end = totalpage;
                start = end - 9 > 0 ? end - 9 : 1;
            }
            for (double i = start; i <= end; i++)
            {
                if (i == pageIndex)
                {
                    sb.Append(string.Format("<li class='page-item'><a href='?pageIndex={0}&SortOrder={1}&SortBy={2}' class='page-link' style='font-size:16px;'>{0}</a></li>", i, sortorder, sortby, CheckState));
                }
                else
                {
                    sb.Append(string.Format("<li class='page-item'><a href='?pageIndex={0}&SortOrder={1}&SortBy={2}&CheckState={3}' class='page-link'>{0}</a></li>", i, sortorder, sortby, CheckState));
                }
            }


            return sb.ToString();
        }
    }
}
