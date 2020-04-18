using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanWebsite.Master_Pages
{
    public partial class Secure_Customer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lblLogout_Click(object sender, EventArgs e)
        {
            Session["UserID"] = null;
            Response.Redirect("~/Pages/Default.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}