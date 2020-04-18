using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanWebsite.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 0; i < 12; i++)
                {
                    ddDBMonth.Items.Insert(i, new ListItem(Convert.ToString(i + 1)));
                }
                for (int i = 0; i < 30; i++)
                {
                    ddDBDay.Items.Insert(i, new ListItem(Convert.ToString(i + 1)));
                }
                for (int i = 1900; i <= DateTime.Now.Year; i++)
                {
                    ddDBYear.Items.Insert((i - 1900), new ListItem(Convert.ToString(i)));
                }
            }
        }
        

        protected void ddDBMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            //ddDBDay.Items.Clear();

            int selectedMonth = Convert.ToInt32(ddDBMonth.SelectedIndex);
            int selectedYear = Convert.ToInt32(ddDBYear.SelectedValue);

            for (int i = 0; i<=DateTime.DaysInMonth(selectedMonth, selectedYear); i++)
            {
                ddDBDay.Items.Insert(i, new ListItem(Convert.ToString(i+1)));
            }
        }

        protected void btnSubmitRegistration_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                
            }
            else lblError.Text = "Not all values are valid";
        }
        
    }
} 