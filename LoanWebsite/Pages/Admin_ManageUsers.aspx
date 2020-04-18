<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Secure_Admin.Master" AutoEventWireup="true" CodeBehind="Admin_ManageUsers.aspx.cs" Inherits="LoanWebsite.Pages.Admin_ManageUsers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="nestedContent2" runat="server">
    <br />
    <br />
    <asp:FormView ID="fvManageUserAccounts" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="UserID" DataSourceID="dsManageUserAccounts" ForeColor="#333333" Width="30%">
        <EditItemTemplate>
            UserID:
            <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            IsAdmin:
            <asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked='<%# Bind("IsAdmin") %>' />
            <br />
            Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            IsActive:
            <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            IsAdmin:
            <asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked='<%# Bind("IsAdmin") %>' />
            <br />
            Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsernameTextBox" Display="Dynamic" ErrorMessage="Please insert a valid value." SetFocusOnError="True" ValidationGroup="InsertValidation"></asp:RequiredFieldValidator>
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please insert a valid value." SetFocusOnError="True" ValidationGroup="InsertValidation"></asp:RequiredFieldValidator>
            <br />
            IsActive:
            <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="InsertValidation" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            IsAdmin:
            <asp:CheckBox ID="IsAdminCheckBox" runat="server" Checked='<%# Bind("IsAdmin") %>' Enabled="false" />
            <br />
            Username:
            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
            <br />
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            IsActive:
            <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' Enabled="false" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
    <asp:SqlDataSource ID="dsManageUserAccounts" runat="server" ConnectionString="<%$ ConnectionStrings:CIS41100ConnectionString %>" DeleteCommand="DELETE FROM [tblAbbottUser] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [tblAbbottUser] ([IsAdmin], [Username], [Password], [IsActive]) VALUES (@IsAdmin, @Username, @Password, @IsActive)" SelectCommand="SELECT [UserID], [IsAdmin], [Username], [Password], [IsActive] FROM [tblAbbottUser] ORDER BY [UserID]" UpdateCommand="UPDATE [tblAbbottUser] SET [IsAdmin] = @IsAdmin, [Username] = @Username, [Password] = @Password, [IsActive] = @IsActive WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IsAdmin" Type="Boolean" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="IsActive" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IsAdmin" Type="Boolean" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="IsActive" Type="Boolean" />
            <asp:Parameter Name="UserID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>