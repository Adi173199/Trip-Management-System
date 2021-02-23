using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TripManagement_System
{
    public partial class LogIn : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void txtSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void txtLogin_Click(object sender, EventArgs e)
        {
            int Isl = Islogin();
            if (Isl == 1)
            {
                Response.Write("<script>alert('User Login Successfully')</script>");
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('UserName Or Password Is Incorrect')</script>");
            }
        }
        public int Islogin()
        {

            int IsId = 0;

            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True");

            string str = "Select count(*) from [User] where Uname='" + txtUsername.Text.Trim() + "' and Password='" + txtPassword.Text.Trim() + "'";

            con.Open();

            SqlCommand cmd = new SqlCommand(str, con);

            IsId = Convert.ToInt32(cmd.ExecuteScalar());
            return IsId;
           
        }
    }
}