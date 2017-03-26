using IDAL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{

    public partial class tbl_CategoryDAL : BaseDAL<tbl_Category>, Itbl_CategoryDAL
    {

    }

    public partial class tbl_UrlDAL : BaseDAL<tbl_Url>, IBaseDAL<tbl_Url>
    {
    }

    public partial class tbl_UserDAL : BaseDAL<tbl_User>, IBaseDAL<tbl_User>
    {
    }
   
}
