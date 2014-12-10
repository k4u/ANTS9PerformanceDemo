<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewMasterPage1.Master" Inherits="System.Web.Mvc.ViewPage<LibraryData.ViewModels.FindMembersViewModel>" %>
<%@ Import Namespace="System.Activities.Statements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Search Members
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Search Members!</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Search Input Values</legend>
        <p>Please enter as much, or as little as desired for search ideas.</p>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.FirstName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.FirstName) %>
            <%: Html.ValidationMessageFor(model => model.FirstName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.LastName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.LastName) %>
            <%: Html.ValidationMessageFor(model => model.LastName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PostCode) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PostCode) %>
            <%: Html.ValidationMessageFor(model => model.PostCode) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.City) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.City) %>
            <%: Html.ValidationMessageFor(model => model.City) %>
        </div>
        
        <div class="editor-label">
            <%: Html.LabelFor(model => model.OnlyShowOutstanding) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.OnlyShowOutstanding) %>
            <%: Html.ValidationMessageFor(model => model.OnlyShowOutstanding) %>
        </div>

        <p>
            <input type="submit" value="Search Members" />
        </p>
    </fieldset>
<% } %>
    
    <% if(Model.SearchCompleted)
   { %>
    
    <h3>Search Results(<%: Model.SearchResults.Count() %>) </h3>
    <p>
    <% foreach (var member in Model.SearchResults)
       {

    %>
        <%: member.FirstName + " " + member.LastName %> <br />
    <% } %>
    </p>
   <%    
   } %>

<div>
    <%: Html.ActionLink("Back to Demo List", "Index") %>
</div>

</asp:Content>
