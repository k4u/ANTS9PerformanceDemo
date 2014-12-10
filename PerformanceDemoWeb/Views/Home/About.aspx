<%@ Page Title="" Language="C#" MasterPageFile="~/Views/ViewMasterPage1.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    About this Demo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>About Performance Demo</h2>
    
    <p>This is a simple ASP.NET MVC application using Entity Framework to demonstrate a few key performance issues that can occur.  Using ANTS profiler the
        application is optimized to resolve the identified issues.  The data model used with this example in demonstration purposes is loaded with a little over 1 million records to
        ensure that high-volume activity can been seen.
    </p>
    
    <p>Initially created by Mitchel Sellers of IowaComputerGurus, Inc.</p>
</asp:Content>
