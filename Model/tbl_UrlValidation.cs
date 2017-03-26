using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using UtilityClass;

namespace Model
{
    public class UniqueUrlAttribute : ValidationAttribute
    {
        int count = 0;
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            
            if (CheckValidate.NotValidate||count!=0)
            {
                
                CheckValidate.NotValidate = false;
                count++;
                return ValidationResult.Success;
            }
            LinkHubDBEntities db = new LinkHubDBEntities();
           
            string url = value.ToString();
            if (db.tbl_Url.Where(c => c.Url == url).Count() != 0)
                return new ValidationResult("Url Exists");

            return ValidationResult.Success;
        }
    }
    public class tbl_UrlValidation
    {

        [Required(ErrorMessage ="Input your Url Title")]
        public string UrlTitle { get; set; }

        [Required(ErrorMessage = "Input your Url")]
        [Url(ErrorMessage = "Wrong Input Format")]
        [UniqueUrl]
        public string Url { get; set; }

        public string UrlDesc { get; set; }
    }
    [MetadataType(typeof(tbl_UrlValidation))]
    public partial class tbl_Url
    {

    }
}
