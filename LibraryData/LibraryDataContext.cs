using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibraryData.Models;

namespace LibraryData
{
    public class LibraryDataContext : DbContext
    {
        public LibraryDataContext() : base("RedgateDemoConnection")
        {
            //Uncomment this line to remove EF overhead queries for model synchronization
            //Database.SetInitializer<LibraryDataContext>(null);
        }

        public DbSet<Book> Books { get; set; }
        public DbSet<BookInstance> BookInstances { get; set; }
        public DbSet<Archive> Archives { get; set; }

        public DbSet<Member> Members { get; set; }

        public DbSet<Loan> Loans { get; set; }
    }
}
