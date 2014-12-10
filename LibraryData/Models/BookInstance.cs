using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryData.Models
{
    [Table("BookInstances")]
    public class BookInstance
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public int BookId { get; set; }

        public virtual Book Book { get; set; }

        [Required]
        [MaxLength(50)]
        public string Location { get; set; }

        [Required]
        public decimal PricePaid { get; set; }

    }
}
