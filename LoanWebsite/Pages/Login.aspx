<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Outside.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoanWebsite.Pages.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>NOTICE: Our apologies. Sadly, as the time of writing, the SQL server that distributed login access has been shutdown. </p>
        

    <table align="center"  style="width: 30%" >
        <tr>
            <td colspan="2">
                <asp:Label ID="lblErrorMessage" runat="server" Text="" Color="Yellow"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Username</td>
            <td>
                <asp:TextBox ID="txtBoxUsername" runat="server">root</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txtBoxPassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="width: 100%;margin-top: 15px;height: 30px;">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="100%" Height="30px" margin-top="15px" Font-Bold="False" Font-Size="Medium" />
            </td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" >Forget username or password? ---&gt; password = toor</asp:HyperLink>
                <asp:SqlDataSource ID="dsLogin" runat="server" ConnectionString="<%$ ConnectionStrings:CIS41100ConnectionString %>" SelectCommand="SELECT [UserID], [Username], [IsActive], [IsAdmin], [Password] FROM [tblAbbottUser] WHERE ([Username] = @Username)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtBoxUsername" Name="Username" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>

