<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewMasterPage1.Master" Inherits="System.Web.Mvc.ViewPage<LibraryData.ViewModels.ListArchivedAuthorsViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Archived Book Summary
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Archived Book Summary - By Author</h2>

    <table>
        <tr>
            <th>Author Name</th>
            <th>Book Count</th>
        </tr>
        <% foreach (var author in Model.ListingResults)
           { %>
                <tr>
                    <td><%: author.Author %></td>
                    <td><%: author.BookCount %></td>
                </tr>
        <% } %>
    </table>
    <div>
        <%: Html.ActionLink("Back to Demo List", "Index") %>
    </div>

</asp:Content>
