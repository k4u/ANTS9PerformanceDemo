using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryData.Models
{
    public class Book
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        [Display(Name="Book Title")]
        public string Title { get; set; }

        [Required]
        [MaxLength(50)]
        [Display(Name="Book Author")]
        public string Author { get; set; }

        [Required]
        [MaxLength(50)]
        [Display(Name="Book ISBN")]
        public string ISBN { get; set; }

    }
}
