<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Outside.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LoanWebsite.Pages.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    


    <br />
    <table align="center" style="width: 50%">
        <tr>
            <td style="width: 33%">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            &nbsp;*</td>
            <td colspan="3">
                <asp:TextBox ID="txtFirstName" runat="server" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="Label2" runat="server" Text="Middle Name"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtMiddleName" runat="server" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
            &nbsp;*</td>
            <td colspan="3">
                <asp:TextBox ID="txtLastName" runat="server" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="Label4" runat="server" Text="Email Address"></asp:Label>
            &nbsp;*</td>
            <td colspan="3">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="Label5" runat="server" Text="Phone NUmber"></asp:Label>
            &nbsp;*</td>
            <td colspan="3">
                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="Label6" runat="server" Text="Street Address"></asp:Label>
            &nbsp;*</td>
            <td colspan="3">
                <asp:TextBox ID="txtStreetAddress" runat="server" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
            &nbsp;*</td>
            <td colspan="3">
                <asp:DropDownList ID="ddState" runat="server">
                    <asp:ListItem>AL</asp:ListItem>
                    <asp:ListItem>AK</asp:ListItem>
                    <asp:ListItem>AZ</asp:ListItem>
                    <asp:ListItem>AR</asp:ListItem>
                    <asp:ListItem>CA</asp:ListItem>
                    <asp:ListItem>CO</asp:ListItem>
                    <asp:ListItem>CT</asp:ListItem>
                    <asp:ListItem>DE</asp:ListItem>
                    <asp:ListItem>FL</asp:ListItem>
                    <asp:ListItem>GA</asp:ListItem>
                    <asp:ListItem>HI</asp:ListItem>
                    <asp:ListItem>IA</asp:ListItem>
                    <asp:ListItem>ID</asp:ListItem>
                    <asp:ListItem>IL</asp:ListItem>
                    <asp:ListItem>IN</asp:ListItem>
                    <asp:ListItem>KS</asp:ListItem>
                    <asp:ListItem>KY</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="Label8" runat="server" Text="ZIP"></asp:Label>
            &nbsp;*</td>
            <td colspan="3">
                <asp:TextBox ID="txtZIP" runat="server" MaxLength="5" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="Label9" runat="server" Text="Country"></asp:Label>
            &nbsp;*</td>
            <td colspan="3">
                <asp:DropDownList ID="ddCountry" runat="server">
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Mexico</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 200px">
                <asp:Label ID="Label10" runat="server" Text="Date of Birth (M/D/Y) *"></asp:Label>
            &nbsp;*</td>
            <td style="height: 20px">
                <asp:DropDownList ID="ddDBMonth" runat="server" OnSelectedIndexChanged="ddDBMonth_SelectedIndexChanged" OnTextChanged="ddDBMonth_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="height: 20px">
                <asp:DropDownList ID="ddDBDay" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td style="height: 20px">
                <asp:DropDownList ID="ddDBYear" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 200px">
                &nbsp;</td>
            <td style="height: 20px" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="Label11" runat="server" Text="Username"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtUsername" runat="server" Width="100%"></asp:TextBox>
            </td> 
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="Label12" runat="server" Text="Password"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 200px">
                <asp:Label ID="txtConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="TextBox13" runat="server" TextMode="Password" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center" >
                <asp:Button ID="btnSubmitRegistration" runat="server" Text="Submit" width="25%" OnClick="btnSubmitRegistration_Click"/>
                <br />
                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CIS41100ConnectionString %>" DeleteCommand="DELETE FROM [tblAbbottCustomer] WHERE [UserID] = @original_UserID AND [FirstName] = @original_FirstName AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND [LastName] = @original_LastName AND [EmailAddress] = @original_EmailAddress AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL)) AND [StreetAddress] = @original_StreetAddress AND [State] = @original_State AND [Zip] = @original_Zip AND [Country] = @original_Country AND [DoB] = @original_DoB AND (([SecurityQuestion] = @original_SecurityQuestion) OR ([SecurityQuestion] IS NULL AND @original_SecurityQuestion IS NULL)) AND (([SecurityAnswer] = @original_SecurityAnswer) OR ([SecurityAnswer] IS NULL AND @original_SecurityAnswer IS NULL)) AND (([CreditScore] = @original_CreditScore) OR ([CreditScore] IS NULL AND @original_CreditScore IS NULL)) AND [IsActive] = @original_IsActive" InsertCommand="INSERT INTO [tblAbbottCustomer] ([FirstName], [MiddleName], [LastName], [EmailAddress], [PhoneNumber], [StreetAddress], [State], [Zip], [Country], [DoB], [SecurityQuestion], [SecurityAnswer], [CreditScore], [IsActive]) VALUES (@FirstName, @MiddleName, @LastName, @EmailAddress, @PhoneNumber, @StreetAddress, @State, @Zip, @Country, @DoB, @SecurityQuestion, @SecurityAnswer, @CreditScore, @IsActive)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblAbbottCustomer]" UpdateCommand="UPDATE [tblAbbottCustomer] SET [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [EmailAddress] = @EmailAddress, [PhoneNumber] = @PhoneNumber, [StreetAddress] = @StreetAddress, [State] = @State, [Zip] = @Zip, [Country] = @Country, [DoB] = @DoB, [SecurityQuestion] = @SecurityQuestion, [SecurityAnswer] = @SecurityAnswer, [CreditScore] = @CreditScore, [IsActive] = @IsActive WHERE [UserID] = @original_UserID AND [FirstName] = @original_FirstName AND (([MiddleName] = @original_MiddleName) OR ([MiddleName] IS NULL AND @original_MiddleName IS NULL)) AND [LastName] = @original_LastName AND [EmailAddress] = @original_EmailAddress AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL)) AND [StreetAddress] = @original_StreetAddress AND [State] = @original_State AND [Zip] = @original_Zip AND [Country] = @original_Country AND [DoB] = @original_DoB AND (([SecurityQuestion] = @original_SecurityQuestion) OR ([SecurityQuestion] IS NULL AND @original_SecurityQuestion IS NULL)) AND (([SecurityAnswer] = @original_SecurityAnswer) OR ([SecurityAnswer] IS NULL AND @original_SecurityAnswer IS NULL)) AND (([CreditScore] = @original_CreditScore) OR ([CreditScore] IS NULL AND @original_CreditScore IS NULL)) AND [IsActive] = @original_IsActive">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_MiddleName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_EmailAddress" Type="String" />
                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                        <asp:Parameter Name="original_StreetAddress" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="Int32" />
                        <asp:Parameter Name="original_Country" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_DoB" />
                        <asp:Parameter Name="original_SecurityQuestion" Type="String" />
                        <asp:Parameter Name="original_SecurityAnswer" Type="String" />
                        <asp:Parameter Name="original_CreditScore" Type="Int32" />
                        <asp:Parameter Name="original_IsActive" Type="Boolean" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="MiddleName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="EmailAddress" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="StreetAddress" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Zip" Type="Int32" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter DbType="Date" Name="DoB" />
                        <asp:Parameter Name="SecurityQuestion" Type="String" />
                        <asp:Parameter Name="SecurityAnswer" Type="String" />
                        <asp:Parameter Name="CreditScore" Type="Int32" />
                        <asp:Parameter Name="IsActive" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="MiddleName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="EmailAddress" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="StreetAddress" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Zip" Type="Int32" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter DbType="Date" Name="DoB" />
                        <asp:Parameter Name="SecurityQuestion" Type="String" />
                        <asp:Parameter Name="SecurityAnswer" Type="String" />
                        <asp:Parameter Name="CreditScore" Type="Int32" />
                        <asp:Parameter Name="IsActive" Type="Boolean" />
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_MiddleName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_EmailAddress" Type="String" />
                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                        <asp:Parameter Name="original_StreetAddress" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="Int32" />
                        <asp:Parameter Name="original_Country" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_DoB" />
                        <asp:Parameter Name="original_SecurityQuestion" Type="String" />
                        <asp:Parameter Name="original_SecurityAnswer" Type="String" />
                        <asp:Parameter Name="original_CreditScore" Type="Int32" />
                        <asp:Parameter Name="original_IsActive" Type="Boolean" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    


    <br />
    <br />
       


</asp:Content>
