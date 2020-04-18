using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoanWebsite.Pages
{
    public partial class Admin_ManageCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dsCustomerUpdate_Deleting(object sender, SqlDataSourceCommandEventArgs e)
        {
            dsManageCustomers.DataBind();
            gvManageCustomers.DataBind();
        }

        protected void dsCustomerUpdate_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            dsManageCustomers.DataBind();
            gvManageCustomers.DataBind();
        }

        protected void dsCustomerUpdate_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            dsManageCustomers.DataBind();
            gvManageCustomers.DataBind();
        }
    }
}