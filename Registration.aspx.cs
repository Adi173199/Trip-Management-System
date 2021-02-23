using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TripManagement_System
{
    public partial class Registration : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO[dbo].[User]
           ([Uname]
           ,[Umobile]
           ,[Uemail]
           ,[Password])
     VALUES
           ('"+txtUsername.Text+"', '"+txtMobile.Text+"','"+txtEmail.Text+"','"+txtPassword.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('User Registered Successfully')</script>");
            Response.Redirect("~/LogIn.aspx");
        }

    }
}