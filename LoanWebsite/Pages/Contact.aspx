<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Master Pages/Outside.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LoanWebsite.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %> Me</h2>
    <%--<h3>Contact Us</h3>--%>
    <address>
        <strong>Author:</strong> Christopher F. Abbott<br />
        <strong>Date:</strong> 12, 2019 <br />
        <strong>Phone:</strong> [Redacted] <br />
        <abbr title="Please check my portfolio"><strong>Email:</strong> [Redacted] </abbr><br />
    </address>

    <p>
        This Website was meant to demonstrate my proficiency with Microsoft WebForms at the time of this projects creation.<br/>
        <br />
        Login Information:<br />
        Admin: Username - root | Password - toor<br />
        Customer: Username - goldman | Password - Sachs

    </p>
    <address>
        <%--<strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>--%>
    </address>
</asp:Content>
