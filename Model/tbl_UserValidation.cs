using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using UtilityClass;

namespace Model
{
    public class UniqueUserAttribute : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            int count = 0;
            if (CheckValidate.NotValidate)
            {
                if (count > 1)
                    return ValidationResult.Success;
                CheckValidate.NotValidate = false;
                count++;
                return ValidationResult.Success;
            }
            LinkHubDBEntities db = new LinkHubDBEntities();

            string useremail = value.ToString();
            if (db.tbl_User.Where(c => c.UserEmail == useremail).Count() != 0)
                return new ValidationResult("User Exists");

            return ValidationResult.Success;
        }
    }
    public class tbl_UserValidation
    {
        [Required]
        [EmailAddress]
        [UniqueUser]
        public string UserEmail { get; set; }

        [Required]
        public string Password { get; set; }
    }

    [MetadataType(typeof(tbl_UserValidation))]
    public partial class tbl_User
    {

    }
}
