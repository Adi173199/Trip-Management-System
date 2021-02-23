using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TripManagement_System
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUsername.Text=="admin" && txtPassword.Text=="admin")
            {
                Response.Write("<script>alert('Admin Login Successfully')</script>");
                Response.Redirect("admindashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('UserName Or Password Incorrect')</script>");
            }

        }

        
    }
}