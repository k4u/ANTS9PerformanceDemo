using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibraryData.Models;

namespace LibraryData.ViewModels
{
    public class FindMembersViewModel
    {
        [Display(Name="First Name")]
        [MaxLength(50)]
        public string FirstName { get; set; }

        [Display(Name="Last Name")]
        [MaxLength(50)]
        public string LastName { get; set; }
        [Display(Name = "Post Code")]
        [MaxLength(50)]
        public string PostCode { get; set; }

        [Display(Name="City")]
        [MaxLength(50)]
        public string City { get; set; }

        [Display(Name="Only Show Members With Outstanding Loans")]
        public bool OnlyShowOutstanding { get; set; }

        public bool SearchCompleted { get; set; }
        public List<Member> SearchResults { get; set; } 
    }
}
