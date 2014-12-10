using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using LibraryData.Models;

namespace LibraryData
{
    public class LibraryDataRepository
    {
        public List<Member> FindMembers(string firstName, string lastName, string postCode, string city, bool onlyOustanding)
        {
            using(var context = new LibraryDataContext())
            {
                var membersQuery = from m in context.Members
                    select m;

                if (!string.IsNullOrEmpty(firstName))
                    membersQuery = membersQuery.Where(m => m.FirstName.StartsWith(firstName));
                if (!string.IsNullOrEmpty(lastName))
                    membersQuery = membersQuery.Where(m => m.LastName.StartsWith(lastName));
                if (!string.IsNullOrEmpty(postCode))
                    membersQuery = membersQuery.Where(m => m.PostCode.StartsWith(postCode));
                if (!string.IsNullOrEmpty(city))
                    membersQuery = membersQuery.Where(m => m.City.StartsWith(city));
                if (onlyOustanding)
                    membersQuery = membersQuery.Where(m => m.Loans.Any(l => l.Returned == 0));

                return membersQuery.ToList();
            }
        }

        public List<Archive> FindArchives(string title, string author, string isbn)
        {
            using (var context = new LibraryDataContext())
            {
                var archiveQuery = from a in context.Archives select a;

                if (!String.IsNullOrEmpty(title))
                    archiveQuery = archiveQuery.Where(a => a.Title.StartsWith(title));
                if (!String.IsNullOrEmpty(author))
                    archiveQuery = archiveQuery.Where(a => a.Author.StartsWith(author));
                if (!String.IsNullOrEmpty(isbn))
                    archiveQuery = archiveQuery.Where(a => a.Title.StartsWith(isbn));

                return archiveQuery.Take(150).ToList();
            }
        }

        public List<AuthorSummary> GetArchivedAuthorSummaries()
        {
            using (var context = new LibraryDataContext())
            {
                var results = from a in context.Archives
                              where a.Author.StartsWith("Aaron")
                    group a by a.Author
                    into grp
                    orderby grp.Key
                    select new AuthorSummary {Author = grp.Key, BookCount = grp.Count()};

                return results.ToList();
            }
        }
    }
}
