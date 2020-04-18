<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Secure_Admin.Master" AutoEventWireup="true" CodeBehind="Admin_ViewLoans.aspx.cs" Inherits="LoanWebsite.Pages.Admin_ViewLoans" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="nestedContent2" runat="server">

    <div class="left-side" style="float: left; width: 39.25%; ; padding-left: 5%; ">

    <p style="font-size: 25px">Create and Save a new Loan</p>

    <asp:DropDownList ID="ddSelectCustomer" runat="server" DataSourceID="dsCustomerSelection" DataTextField="LastName" DataValueField="UserID" style="margin-bottom:15px; width: 20%;" AutoPostBack="True"></asp:DropDownList>
    <asp:SqlDataSource ID="dsCustomerSelection" runat="server" ConnectionString="<%$ ConnectionStrings:CIS41100ConnectionString %>" SelectCommand="SELECT [UserID], [LastName] FROM [tblAbbottCustomer] ORDER BY [UserID]"></asp:SqlDataSource>
    <asp:GridView ID="gvListCustomerLoans" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="LoanID" DataSourceID="dsSelectCustomerLoan" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvListCustomerLoans_SelectedIndexChanged" style="margin-bottom:15px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="LoanID" HeaderText="LoanID" InsertVisible="False" ReadOnly="True" SortExpression="LoanID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" DataFormatString="{0:c}" />
            <asp:BoundField DataField="DownPayment" HeaderText="DownPayment" SortExpression="DownPayment" DataFormatString="{0:c}" />
            <asp:BoundField DataField="LoanTerm" HeaderText="LoanTerm" SortExpression="LoanTerm" />
            <asp:BoundField DataField="InterestRate" HeaderText="InterestRate" SortExpression="InterestRate" DataFormatString="{0}%" />
            <asp:CheckBoxField DataField="Secure" HeaderText="Secure" SortExpression="Secure" />
            <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
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
    <asp:SqlDataSource ID="dsSelectCustomerLoan" runat="server" ConnectionString="<%$ ConnectionStrings:CIS41100ConnectionString %>" SelectCommand="SELECT * FROM [tblAbbottLoan] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddSelectCustomer" Name="UserID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="UpdateLoan" runat="server" CellPadding="4" DataKeyNames="LoanID" DataSourceID="dsUpdateLoan" ForeColor="#333333">
        <EditItemTemplate>
            LoanID:
                <asp:Label ID="LoanIDLabel1" runat="server" Text='<%# Eval("LoanID") %>' />
            <br />
            UserID:
                <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
            <br />
            Amount:
                <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
            <br />
            DownPayment:
                <asp:TextBox ID="DownPaymentTextBox" runat="server" Text='<%# Bind("DownPayment") %>' />
            <br />
            LoanTerm:
                <asp:TextBox ID="LoanTermTextBox" runat="server" Text='<%# Bind("LoanTerm") %>' />
            <br />
            InterestRate:
                <asp:TextBox ID="InterestRateTextBox" runat="server" Text='<%# Bind("InterestRate") %>' />
            <br />
            Secure:
                <asp:CheckBox ID="SecureCheckBox" runat="server" Checked='<%# Bind("Secure") %>' />
            <br />
            IsActive:
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EmptyDataTemplate>
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </EmptyDataTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            UserID:
                <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
            <br />
            Amount:
                <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
            <br />
            DownPayment:
                <asp:TextBox ID="DownPaymentTextBox" runat="server" Text='<%# Bind("DownPayment") %>' />
            <br />
            LoanTerm:
                <asp:TextBox ID="LoanTermTextBox" runat="server" Text='<%# Bind("LoanTerm") %>' />
            <br />
            InterestRate:
                <asp:TextBox ID="InterestRateTextBox" runat="server" Text='<%# Bind("InterestRate") %>' />
            <br />
            Secure:
                <asp:CheckBox ID="SecureCheckBox" runat="server" Checked='<%# Bind("Secure") %>' />
            <br />
            IsActive:
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            LoanID:
                <asp:Label ID="LoanIDLabel" runat="server" Text='<%# Eval("LoanID") %>' />
            <br />
            UserID:
                <asp:Label ID="UserIDLabel" runat="server" Text='<%# Bind("UserID") %>' />
            <br />
            Amount:
                <asp:Label ID="AmountLabel" runat="server" Text='<%# Bind("Amount") %>' />
            <br />
            DownPayment:
                <asp:Label ID="DownPaymentLabel" runat="server" Text='<%# Bind("DownPayment") %>' />
            <br />
            LoanTerm:
                <asp:Label ID="LoanTermLabel" runat="server" Text='<%# Bind("LoanTerm") %>' />
            <br />
            InterestRate:
                <asp:Label ID="InterestRateLabel" runat="server" Text='<%# Bind("InterestRate") %>' />
            <br />
            Secure:
                <asp:CheckBox ID="SecureCheckBox" runat="server" Checked='<%# Bind("Secure") %>' Enabled="false" />
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
    <asp:SqlDataSource ID="dsUpdateLoan" runat="server" ConnectionString="<%$ ConnectionStrings:CIS41100ConnectionString %>" DeleteCommand="DELETE FROM [tblAbbottLoan] WHERE [LoanID] = @LoanID" InsertCommand="INSERT INTO [tblAbbottLoan] ([UserID], [Amount], [DownPayment], [LoanTerm], [InterestRate], [Secure], [IsActive]) VALUES (@UserID, @Amount, @DownPayment, @LoanTerm, @InterestRate, @Secure, @IsActive)" SelectCommand="SELECT * FROM [tblAbbottLoan] WHERE ([LoanID] = @LoanID)" UpdateCommand="UPDATE [tblAbbottLoan] SET [UserID] = @UserID, [Amount] = @Amount, [DownPayment] = @DownPayment, [LoanTerm] = @LoanTerm, [InterestRate] = @InterestRate, [Secure] = @Secure, [IsActive] = @IsActive WHERE [LoanID] = @LoanID" OnDeleted="dsUpdateLoan_Deleted" OnInserted="dsUpdateLoan_Inserted" OnSelected="dsUpdateLoan_Selected" OnUpdated="dsUpdateLoan_Updated">
        <DeleteParameters>
            <asp:Parameter Name="LoanID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="ddSelectCustomer" Name="UserID" PropertyName="SelectedValue" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="DownPayment" Type="Decimal" />
            <asp:Parameter Name="LoanTerm" Type="Int32" />
            <asp:Parameter Name="InterestRate" Type="Int32" />
            <asp:Parameter Name="Secure" Type="Boolean" />
            <asp:Parameter Name="IsActive" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvListCustomerLoans" Name="LoanID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="DownPayment" Type="Decimal" />
            <asp:Parameter Name="LoanTerm" Type="Int32" />
            <asp:Parameter Name="InterestRate" Type="Int32" />
            <asp:Parameter Name="Secure" Type="Boolean" />
            <asp:Parameter Name="IsActive" Type="Boolean" />
            <asp:Parameter Name="LoanID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>

    <div class="right-side" style="float: right; height: auto; width: 59.25%; background-color: lightsteelblue">
        <p style="font-size: 25px">Plan out a new Loan</p>
        <div class="left-right-side" style="float: left; height: auto; width: 100%; background-color: white">
            <asp:Label ID="lblMonthlyPayment" runat="server" Text="$0.00" style="margin-top: 50px; margin-bottom: 35px; font-size: 35px;"></asp:Label>

            <asp:GridView ID="gvAmortization" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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

                <Columns>
                    <asp:BoundField DataField="BeginningBalance" Headertext="Beginning Balance" DataFormatString="{0:c}" />
                    <asp:BoundField DataField="EndingBalance" Headertext="Ending Balance" DataFormatString="{0:c}" />
                    <asp:BoundField DataField="InterestPaid" Headertext="Interes Paid" DataFormatString="{0:c}" />
                    <asp:BoundField DataField="PrincipalPaid" Headertext="Principle Paid" DataFormatString="{0:c}" />
                </Columns>

            </asp:GridView>
        </div>
        <%--<div class="right-right-side" style="float: right; height: 500px; width: 50%; background-color: pink">

        </div>--%>
    </div>
</asp:Content>