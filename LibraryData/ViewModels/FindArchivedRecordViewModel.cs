using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibraryData.Models;

namespace LibraryData.ViewModels
{
    public class FindArchivedRecordViewModel
    {
        [MaxLength(50)]
        [Display(Name="Book Title")]
        public string Title { get; set; }
        [MaxLength(50)]
        [Display(Name="Book Author")]
        public string Author { get; set; }

        [MaxLength(50)]
        [Display(Name="Book ISBN")]
        public string ISBN { get; set; }

        public bool SearchCompleted { get; set; }

        public List<Archive> SearchResults { get; set; } 
    }
}
