using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LibraryData;
using LibraryData.ViewModels;
using Microsoft.Ajax.Utilities;

namespace PerformanceDemoWeb.Controllers
{
    public class DemoController : Controller
    {
        //
        // GET: /Demo/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult FindMembers()
        {
            return View(new FindMembersViewModel());
        }

        [HttpPost]
        public ActionResult FindMembers(FindMembersViewModel postData)
        {
            var data = new LibraryDataRepository();
            postData.SearchResults = data.FindMembers(postData.FirstName, postData.LastName, postData.PostCode, postData.City, postData.OnlyShowOutstanding);
            postData.SearchCompleted = true;
            return View(postData);
        }

        public ActionResult FindArchivedRecord()
        {
            return View(new FindArchivedRecordViewModel());
        }

        [HttpPost]
        public ActionResult FindArchivedRecord(FindArchivedRecordViewModel postData)
        {
            var data = new LibraryDataRepository();
            postData.SearchResults = data.FindArchives(postData.Title, postData.Author, postData.ISBN);
            postData.SearchCompleted = true;
            return View(postData);
        }

        public ActionResult ListArchivedAuthorSummaries()
        {
            var data = new LibraryDataRepository();
            var vm = new ListArchivedAuthorsViewModel();
            vm.ListingResults = data.GetArchivedAuthorSummaries();
            return View(vm);
        }

    }
}
