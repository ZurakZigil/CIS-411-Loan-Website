using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanWebsite.Pages
{
    public partial class Customer_CreateLoans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void populateGridView()
        {
            //DataTable dt = new DataTable();
        }
        protected void btnCalc_Click(object sender, EventArgs e)
        {
            double loanAmount;
            double.TryParse(txtLoanAmount.Text, out loanAmount);

            double downPayment;
            double.TryParse(txtDownPayment.Text, out downPayment);

            double totalPayments;
            double.TryParse(txtLoanTerm.Text, out totalPayments);
            totalPayments = totalPayments * 12;

            double interest;
            double.TryParse(txtInterestRate.Text, out interest);

            double tax;
            double.TryParse(txtTax.Text, out tax);

            double otherFees;
            double.TryParse(txtCreateLoanOther.Text, out otherFees);

            double insurance;
            double.TryParse(txtInsurance.Text, out insurance);

            double feePMI;
            double.TryParse(txtPMI.Text, out feePMI);

            double baseLoan = loanAmount - downPayment;
            double powerCalc = Math.Pow((1 + interest / 12), totalPayments);
            double baseMonthlyCost = baseLoan * (powerCalc * interest) / (12 * (powerCalc - 1));
            double monthlyCost = baseMonthlyCost + (tax + insurance + otherFees + feePMI) / 12;
            double baseTotalPaid = baseMonthlyCost * totalPayments;
            double totalPaid = monthlyCost * totalPayments;

            lblMonthlyCostResult.Text = $"{monthlyCost:C2} / mo";
            lblLoanResult.Text = $"{baseMonthlyCost:C2}";
            lblPropertyTaxResults.Text = $"{(tax / 12):C2}";
            lblMonthlyInsuranceResults.Text = $"{(insurance / 12):C2}";

            lblTotalPaidResults.Text = $"{(totalPaid):C2}";
            lblTotalInterestPaidResults.Text = $"{(baseTotalPaid - baseLoan):C2}";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}