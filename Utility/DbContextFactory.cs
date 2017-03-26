using Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace Utility
{
    //create only one Dbcontext instance in whole project.
    public class DbContextFactory
    {

        public static DbContext CreateSingleDbcontext()
        {
            DbContext dbcontext = (DbContext)CallContext.GetData("dbcontext");
            if (dbcontext == null)
            {
                dbcontext = new LinkHubDBEntities();
                CallContext.SetData("dbcontext", dbcontext);
            }
            return dbcontext;
        }

    }
}
