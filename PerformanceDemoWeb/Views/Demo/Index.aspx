<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewMasterPage1.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Demo Listing
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Available Demos</h2>
    
    <h3>Demo Links</h3>
    <ul>
        <li><a href="/Demo/FindMembers">Find a Member</a></li>
        <li><a href="/Demo/FindArchivedRecord">Find an Archived Book</a></li>
        <li><a href="/Demo/ListArchivedAuthorSummaries">Summarize Archives By Author</a></li>
    </ul>
</asp:Content>
