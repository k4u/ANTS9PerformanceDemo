<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewMasterPage1.Master" Inherits="System.Web.Mvc.ViewPage<LibraryData.ViewModels.FindArchivedRecordViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Search Archives
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Search Book Archives</h2>
    
    <p>NOTE: Please specify at least one search term as part of this query.  Leaving all blank can cause out of memory exceptions due to size.</p>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Archived Book Search Inputs</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Title) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Title) %>
            <%: Html.ValidationMessageFor(model => model.Title) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Author) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Author) %>
            <%: Html.ValidationMessageFor(model => model.Author) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ISBN) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ISBN) %>
            <%: Html.ValidationMessageFor(model => model.ISBN) %>
        </div>
        <p>
            <input type="submit" value="Search Archives" />
        </p>
    </fieldset>
<% } %>
    
        <% if(Model.SearchCompleted)
   { %>
    
    <h3>Search Results(<%: Model.SearchResults.Count() %>) </h3>
    <p>
    <% foreach (var book in Model.SearchResults)
       {

    %>
        <%: book.Title + " " + book.Author + " (" + book.ISBN + ")" %> <br />
    <% } %>
    </p>
   <%    
   } %>
<div>
    <%: Html.ActionLink("Back to Demo List", "Index") %>
</div>
</asp:Content>
