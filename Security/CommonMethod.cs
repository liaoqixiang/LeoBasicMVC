using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Transactions;
using System.Web.Mvc;
namespace Security
{
    
    public class CommonMethod:BaseOperation
    {
      
        public void InsertCasualSubmitModel(CasualSubmitViewModel SubmitViewModel)
        {
            using (TransactionScope Trans = new TransactionScope())
            {
                try
                {
                    
                    tbl_User u = SubmitViewModel.casualuser;
                    u.Password = "DefaultPassword";
                    u.Role = "U";
                    UtilityClass.CheckValidate.NotValidate = true;
                    tbl_UserDAL.Add(u);


                    tbl_Url submiturl = SubmitViewModel.submiturl;
                    submiturl.UserId = u.UserId;
                    submiturl.UrlDesc = "nothing";
                    submiturl.IsApproved = "P";
                    tbl_UrlDAL.Add(submiturl);
                    Trans.Complete();
                }
                catch (Exception E1)
                {
                    throw new Exception(E1.Message);
                }
            }
            

        }
    }
}
