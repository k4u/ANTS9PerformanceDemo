using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryData.Models
{
    /// <summary>
    /// Class AuthorSummary.
    /// </summary>
    public class AuthorSummary
    {
        /// <summary>
        /// Gets or sets the author.
        /// </summary>
        /// <value>The author.</value>
        public string Author { get; set; }
        /// <summary>
        /// Gets or sets the book count.
        /// </summary>
        /// <value>The book count.</value>
        public int BookCount { get; set; }
    }
}
