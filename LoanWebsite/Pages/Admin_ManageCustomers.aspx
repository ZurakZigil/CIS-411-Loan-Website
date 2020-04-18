<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Secure_Admin.Master" AutoEventWireup="true" CodeBehind="Admin_ManageCustomers.aspx.cs" Inherits="LoanWebsite.Pages.Admin_ManageCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="nestedContent2" runat="server">
    <br />
    <br />
    <asp:GridView ID="gvManageCustomers" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="dsManageCustomers" ForeColor="#333333" GridLines="None" Width="252px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" Visible="False" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<br />
<asp:FormView ID="fvManageCustomers" runat="server" CellPadding="4" DataKeyNames="UserID" DataSourceID="dsCustomerUpdate" ForeColor="#333333">
    <EditItemTemplate>
        UserID:
        <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
        <br />
        FirstName:
        <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please give a valid value" ValidationGroup="editCustomer" ControlToValidate="FirstNameTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        MiddleName:
        <asp:TextBox ID="MiddleNameTextBox" runat="server" Text='<%# Bind("MiddleName") %>' />
        <br />
        LastName:
        <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Please give a valid value" ValidationGroup="editCustomer" ControlToValidate="LastNameTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        EmailAddress:
        <asp:TextBox ID="EmailAddressTextBox" runat="server" Text='<%# Bind("EmailAddress") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please give a valid value" ValidationGroup="editCustomer" ControlToValidate="EmailAddressTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        PhoneNumber:
        <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
        <br />
        StreetAddress:
        <asp:TextBox ID="StreetAddressTextBox" runat="server" Text='<%# Bind("StreetAddress") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please give a valid value" ValidationGroup="editCustomer" ControlToValidate="StreetAddressTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        State:
        <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Please give a valid value" ValidationGroup="editCustomer" ControlToValidate="StateTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        Zip:
        <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Please give a valid value" ValidationGroup="editCustomer" ControlToValidate="ZipTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        Country:
        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Please give a valid value" ValidationGroup="editCustomer" ControlToValidate="CountryTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        DoB:
        <asp:TextBox ID="DoBTextBox" runat="server" Text='<%# Bind("DoB") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="Please give a valid value" ValidationGroup="editCustomer" ControlToValidate="DoBTextBox" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        SecurityQuestion:
        <asp:TextBox ID="SecurityQuestionTextBox" runat="server" Text='<%# Bind("SecurityQuestion") %>' />
        <br />
        SecurityAnswer:
        <asp:TextBox ID="SecurityAnswerTextBox" runat="server" Text='<%# Bind("SecurityAnswer") %>' />
        <br />
        CreditScore:
        <asp:TextBox ID="CreditScoreTextBox" runat="server" Text='<%# Bind("CreditScore") %>' />
        <br />
        IsActive:
        <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <EditRowStyle BackColor="#999999" />
    <EmptyDataTemplate>
        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </EmptyDataTemplate>
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <InsertItemTemplate>
        FirstName:
        <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNameTextBox" Display="Dynamic" ErrorMessage="Please give a valid value" SetFocusOnError="True" ValidationGroup="editCustomer"></asp:RequiredFieldValidator>
        <br />
        MiddleName:
        <asp:TextBox ID="MiddleNameTextBox" runat="server" Text='<%# Bind("MiddleName") %>' />
        <br />
        LastName:
        <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNameTextBox" Display="Dynamic" ErrorMessage="Please give a valid value" SetFocusOnError="True" ValidationGroup="editCustomer"></asp:RequiredFieldValidator>
        <br />
        EmailAddress:
        <asp:TextBox ID="EmailAddressTextBox" runat="server" Text='<%# Bind("EmailAddress") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailAddressTextBox" Display="Dynamic" ErrorMessage="Please give a valid value" SetFocusOnError="True" ValidationGroup="editCustomer"></asp:RequiredFieldValidator>
        <br />
        PhoneNumber:
        <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
        <br />
        StreetAddress:
        <asp:TextBox ID="StreetAddressTextBox" runat="server" Text='<%# Bind("StreetAddress") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="StreetAddressTextBox" Display="Dynamic" ErrorMessage="Please give a valid value" SetFocusOnError="True" ValidationGroup="editCustomer"></asp:RequiredFieldValidator>
        <br />
        State:
        <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="StateTextBox" Display="Dynamic" ErrorMessage="Please give a valid value" SetFocusOnError="True" ValidationGroup="editCustomer"></asp:RequiredFieldValidator>
        <br />
        Zip:
        <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ZipTextBox" Display="Dynamic" ErrorMessage="Please give a valid value" SetFocusOnError="True" ValidationGroup="editCustomer"></asp:RequiredFieldValidator>
        <br />
        Country:
        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="CountryTextBox" Display="Dynamic" ErrorMessage="Please give a valid value" SetFocusOnError="True" ValidationGroup="editCustomer"></asp:RequiredFieldValidator>
        <br />
        DoB:
        <asp:TextBox ID="DoBTextBox" runat="server" Text='<%# Bind("DoB") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DoBTextBox" Display="Dynamic" ErrorMessage="Please give a valid value" SetFocusOnError="True" ValidationGroup="editCustomer"></asp:RequiredFieldValidator>
        <br />
        SecurityQuestion:
        <asp:TextBox ID="SecurityQuestionTextBox" runat="server" Text='<%# Bind("SecurityQuestion") %>' />
        <br />
        SecurityAnswer:
        <asp:TextBox ID="SecurityAnswerTextBox" runat="server" Text='<%# Bind("SecurityAnswer") %>' />
        <br />
        CreditScore:
        <asp:TextBox ID="CreditScoreTextBox" runat="server" Text='<%# Bind("CreditScore") %>' />
        <br />
        IsActive:
        <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        UserID:
        <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
        <br />
        FirstName:
        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
        <br />
        MiddleName:
        <asp:Label ID="MiddleNameLabel" runat="server" Text='<%# Bind("MiddleName") %>' />
        <br />
        LastName:
        <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
        <br />
        EmailAddress:
        <asp:Label ID="EmailAddressLabel" runat="server" Text='<%# Bind("EmailAddress") %>' />
        <br />
        PhoneNumber:
        <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Bind("PhoneNumber") %>' />
        <br />
        StreetAddress:
        <asp:Label ID="StreetAddressLabel" runat="server" Text='<%# Bind("StreetAddress") %>' />
        <br />
        State:
        <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
        <br />
        Zip:
        <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
        <br />
        Country:
        <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
        <br />
        DoB:
        <asp:Label ID="DoBLabel" runat="server" Text='<%# Bind("DoB") %>' />
        <br />
        SecurityQuestion:
        <asp:Label ID="SecurityQuestionLabel" runat="server" Text='<%# Bind("SecurityQuestion") %>' />
        <br />
        SecurityAnswer:
        <asp:Label ID="SecurityAnswerLabel" runat="server" Text='<%# Bind("SecurityAnswer") %>' />
        <br />
        CreditScore:
        <asp:Label ID="CreditScoreLabel" runat="server" Text='<%# Bind("CreditScore") %>' />
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
<asp:SqlDataSource ID="dsCustomerUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:CIS41100ConnectionString %>" DeleteCommand="DELETE FROM [tblAbbottCustomer] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [tblAbbottCustomer] ([FirstName], [MiddleName], [LastName], [EmailAddress], [PhoneNumber], [StreetAddress], [State], [Zip], [Country], [DoB], [SecurityQuestion], [SecurityAnswer], [CreditScore], [IsActive]) VALUES (@FirstName, @MiddleName, @LastName, @EmailAddress, @PhoneNumber, @StreetAddress, @State, @Zip, @Country, @DoB, @SecurityQuestion, @SecurityAnswer, @CreditScore, @IsActive)" SelectCommand="SELECT * FROM [tblAbbottCustomer] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [tblAbbottCustomer] SET [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [EmailAddress] = @EmailAddress, [PhoneNumber] = @PhoneNumber, [StreetAddress] = @StreetAddress, [State] = @State, [Zip] = @Zip, [Country] = @Country, [DoB] = @DoB, [SecurityQuestion] = @SecurityQuestion, [SecurityAnswer] = @SecurityAnswer, [CreditScore] = @CreditScore, [IsActive] = @IsActive WHERE [UserID] = @UserID" OnDeleting="dsCustomerUpdate_Deleting" OnInserted="dsCustomerUpdate_Inserted" OnSelected="dsCustomerUpdate_Selected" OnUpdated="dsCustomerUpdate_Inserted">
    <DeleteParameters>
        <asp:Parameter Name="UserID" Type="Int32" />
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
    <SelectParameters>
        <asp:ControlParameter ControlID="gvManageCustomers" Name="UserID" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
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
        <asp:Parameter Name="UserID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="dsManageCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:CIS41100ConnectionString %>" SelectCommand="SELECT [UserID], [FirstName], [LastName] FROM [tblAbbottCustomer]"></asp:SqlDataSource>
</asp:Content>
