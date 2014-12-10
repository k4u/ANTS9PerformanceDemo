using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryData.Models
{
    public class Loan
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public int MemberId { get; set; }

        public virtual Member Member { get; set; }

        [Required]
        public DateTime StartDate { get; set; }

        [Required]
        public DateTime EndDate { get; set; }

        public decimal? FineIncurred { get; set; }

        [Required]
        public int BookInstanceId { get; set; }

        public BookInstance BookInstance { get; set; }

        [Required]
        public Int16 Returned { get; set; }

        [Required]
        public Int16 FinePaid { get; set; }
    }
}
