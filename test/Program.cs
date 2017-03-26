using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace test
{
    class Program
    {
        static void Main(string[] args)
        {
            page p = new page();
            p.Page(new { SortOrder = "1", SortBy = "name" });
        }
    }
    public class page
    {
        public void Page(object sort)
        {
            StringBuilder sb = new StringBuilder();

            var value = sort.GetType().GetProperties();

            for (int i = 0; i < value.Length; i++)
            {
                sb.Append(value[i].GetValue(sort).ToString() + " ");
            }
                
            
            sb.Append(value.GetValue(0));
            Console.WriteLine(sb.ToString());
        }
    }

}
