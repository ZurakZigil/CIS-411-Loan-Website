using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanWebsite.Master_Pages
{
    public partial class Secure : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null){
                Response.Redirect("Login.aspx");
            }
            //if (Session["UserID"] != null)
            //{

            //}
        }
    }
}