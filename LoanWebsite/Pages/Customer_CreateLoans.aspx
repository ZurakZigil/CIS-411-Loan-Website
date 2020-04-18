<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Secure_Customer.Master" AutoEventWireup="true" CodeBehind="Customer_CreateLoans.aspx.cs" Inherits="LoanWebsite.Pages.Customer_CreateLoans" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="nestedContent" runat="server">
    <br /><br />

    <table align="left" style="width: 33%">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Loan Amount"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:TextBox ID="txtLoanAmount" runat="server" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Down Payment"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:TextBox ID="txtDownPayment" runat="server" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Loan Term (in years)"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Interest rate"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtLoanTerm" runat="server" width="80%"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtInterestRate" runat="server" width="80%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
                <asp:Label ID="Label9" runat="server" Text="Optional"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Tax"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server" Text="Insurance (yearly)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtTax" runat="server" width="80%"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtInsurance" runat="server" width="80%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Other (e.g. HOA)"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label8" runat="server" Text="PMI"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtCreateLoanOther" runat="server" width="80%"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtPMI" runat="server" width="80%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
                <br />
                <asp:Button ID="btnCalc" runat="server" Text="Calculate" OnClick="btnCalc_Click" Height="55px" Width="605px" />
            </td>
        </tr>
        </table>

    <%-- -----------------------------------------------------------------------------------GridView: ClientSide Calculation--------- --%>
    <asp:GridView ID="gvAmortization" runat="server" AutoGenerateColumns="false" Height="392px" Width="709px">
        <Columns>
            <asp:BoundField DataField="RowNumber" HeaderText="#" />
            <asp:BoundField DataField="Date" HeaderText="Date" />
            <asp:BoundField DataField="Interest" HeaderText="Interest" />
            <asp:BoundField DataField="Principal" HeaderText="Principal" />
            <asp:BoundField DataField="Balance" HeaderText="Balance" />

<%--            <Itemtemplate>
                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price"," {0:C}") %>'><</asp:Label>
            </Itemtemplate>--%>
        </Columns>

        
    </asp:GridView>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />


    <table style="width: 36%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMonthlyCostResult" runat="server" Text="Your Monthly Cost is..."></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 305px">
                Loan

            </td>
            <td>
                <asp:Label ID="lblLoanResult" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 305px">
                Tax</td>
            <td>
                <asp:Label ID="lblPropertyTaxResults" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 305px">
                Monthly Insurance</td>
            <td>
                <asp:Label ID="lblMonthlyInsuranceResults" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 305px">
                <br />
                Total Paid</td>
            <td>
                <asp:Label ID="lblTotalPaidResults" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 305px">
                Total Interest Paid</td>
            <td>
                <asp:Label ID="lblTotalInterestPaidResults" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
    </table>



    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit Loan" OnClick="btnSubmit_Click" Height="55px" Width="605px" />



</asp:Content>