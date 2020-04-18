<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Master Pages/Outside.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoanWebsite._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="all">
        <p>NOTICE: Our apologies. Sadly, as the time of writing, the SQL server that distributed login access has been shutdown. </p>
        <div class="jumbotron" style="height: 635px; background-image: url('../Content/Main_Images/cliff-freedome-mainpage.jpg'); background-size: 110%" /> ">
        
                <%--<p>Loans give you</p>
                <p>
                    <span class="word alizarin">Freedom.</span>
                    <span class="word wisteria">Power.</span>
                    <span class="word peter-river">Money.</span>
                    <span class="word emerald">Strength.</span>
                    <span class="word sun-flower">Life.</span>
                </p>--%>
            </div>
            <%--<h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
        </div>

        <%--<div class="row">
            <div class="col-md-4">
                <h2>Getting started</h2>
                <p>
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Get more libraries</h2>
                <p>
                    NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Web Hosting</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </div>
        </div>--%>
    </div>

    <style>
    @import url(https://fonts.googleapis.com/css?family=Lato:600);
.all{
    font-family: Lato, sans-serif;
}

body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 85vh;
  background: white;
}

</style>

<script>

</script>

</asp:Content>


