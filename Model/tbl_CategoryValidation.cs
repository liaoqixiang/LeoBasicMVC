using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
namespace Model
{
    public class tbl_CategoryValidation
    {
        [Required]
        public string CategoryName { get; set; }

     
        public string CategoryDesc { get; set; }
    }
    [MetadataType(typeof(tbl_CategoryValidation))]
    public partial class tbl_Category
    {

    }
}
