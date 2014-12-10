using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace LibraryData.Models
{
    public class Member
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string FirstName { get; set; }

        [Required]
        [MaxLength(50)]
        public string LastName { get; set; }

        [Required]
        [MaxLength(50)]
        public string Address1 { get; set; }

        [MaxLength(50)]
        public string Address2 { get; set; }

        [MaxLength(50)]
        public string Address3 { get; set; }

        [Required]
        [MaxLength(50)]
        public string City { get; set; }

        [MaxLength(50)]
        public string County { get; set; }

        [MaxLength(50)]
        public string Country { get; set; }

        [MaxLength(10)]
        public string PostCode { get; set; }

        [MaxLength(50)]
        public string Phone1 { get; set; }

        [MaxLength(50)]
        public string Phone2 { get; set; }

        [MaxLength(50)]
        public string Email1 { get; set; }

        [MaxLength(50)]
        public string Email2 { get; set; }

        [Required]
        public DateTime JoinDate { get; set; }

        public virtual List<Loan> Loans { get; set; } 
    }
}