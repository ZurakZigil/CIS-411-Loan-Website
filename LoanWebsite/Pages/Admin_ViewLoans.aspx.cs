using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanWebsite.Pages
{
    public partial class Admin_ViewLoans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvListCustomerLoans_SelectedIndexChanged(object sender, EventArgs e)
        {
            decimal principleAmount = decimal.Parse(gvListCustomerLoans.SelectedRow.Cells[3].Text.ToString().Trim(new Char[] { '$', ',' }));
            decimal downPayment = decimal.Parse(gvListCustomerLoans.SelectedRow.Cells[4].Text.ToString().Trim(new Char[] { '$', ',' }));
            int loanTerm = int.Parse(gvListCustomerLoans.SelectedRow.Cells[5].Text.ToString());
            int interestRate = int.Parse(gvListCustomerLoans.SelectedRow.Cells[6].Text.ToString().Trim(new Char[] {'%'}));

            if (interestRate>1) { interestRate = interestRate / 100; }

            App_Start.SelectedLoan loan = new App_Start.SelectedLoan()
            {
                Principal = principleAmount,
                InterestRate = interestRate,
                Months = loanTerm
            };

            lblMonthlyPayment.Text = loan.MonthlyPayment.ToString("C");

            gvAmortization.DataSource = loan.Schedule;

            gvAmortization.DataBind();


        }

        protected void dsUpdateLoan_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            dsSelectCustomerLoan.DataBind();
            gvListCustomerLoans.DataBind();
        }

        protected void dsUpdateLoan_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            dsSelectCustomerLoan.DataBind();
            gvListCustomerLoans.DataBind();
        }

        protected void dsUpdateLoan_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            dsSelectCustomerLoan.DataBind();
            gvListCustomerLoans.DataBind();
        }

        protected void dsUpdateLoan_Deleted(object sender, SqlDataSourceStatusEventArgs e)
        {
            dsSelectCustomerLoan.DataBind();
            gvListCustomerLoans.DataBind();
        }
    }
}