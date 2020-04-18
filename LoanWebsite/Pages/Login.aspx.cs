using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanWebsite.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrWhiteSpace(txtBoxUsername.Text) != true && String.IsNullOrWhiteSpace(txtBoxPassword.Text) != true)
            {
                try
                {
                    DataView dview = (DataView)dsLogin.Select(DataSourceSelectArguments.Empty);

                    foreach (DataRow drow in dview.Table.Rows)
                    {
                        if (txtBoxPassword.Text == drow["Password"].ToString())
                        {
                            Session["UserID"] = drow["UserID"];

                            bool isAdmin = Convert.ToBoolean(drow["IsAdmin"]);

                            if (isAdmin == true)
                            {
                                Response.Redirect("Admin_ManageUsers.aspx");
                            }
                            else
                            {
                                Response.Redirect("Customer_ManageProfile.aspx");
                            }
                        }
                        else
                        {
                            lblErrorMessage.Text = "Incorrect password.\nPlease try again.";
                            txtBoxPassword.Focus();
                        }
                    }
                }
                catch (Exception)
                {
                    lblErrorMessage.Text = "Critical Error. Pleas try again at a later time.";
                    txtBoxPassword.Text = "";
                    txtBoxUsername.Text = "";
                }
            }
            else lblErrorMessage.Text = "Please enter in a valid credentials";
           
        }
    }
}