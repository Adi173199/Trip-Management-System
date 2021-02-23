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
    public partial class ManageTrip : System.Web.UI.Page
    {
        string str = @"Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT Tid,UserName,Tname,Ttype,Expense,Persons FROM [Trip]", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = null;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }

        protected void btnDash_Click(object sender, EventArgs e)
        {
            Response.Redirect("admindashboard.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                string cmd = "Delete from [Trip] where Tid= '"+txtTripname.Text+"'";
                SqlDataAdapter sda = new SqlDataAdapter(cmd, con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = null;
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Response.Write("<script>alert('Data Delete Successfully')</script>");
                Response.Redirect("~/ManageTrip.aspx");
            }
        }
    }
}