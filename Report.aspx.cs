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
    public partial class Report1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            //write the query for select here
            string str = @"Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT Uid,Uname,Umobile,Uemail FROM [User]", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gv1.DataSource = null;
                gv1.DataSource = dt;
                gv1.DataBind();
            }
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM [Trip]", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gv1.DataSource = null;
                gv1.DataSource = dt;
                gv1.DataBind();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/homepage.aspx");
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT Username, Expense FROM [Trip]", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gv1.DataSource = null;
                gv1.DataSource = dt;
                gv1.DataBind();
            }
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT Username,Food,Hotel,Travelling,Other,Expense FROM [Trip]", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gv1.DataSource = null;
                gv1.DataSource = dt;
                gv1.DataBind();
            }
        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT Username,SUM(Food) FROM [Trip] GROUP BY Username,Food", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gv1.DataSource = null;
                gv1.DataSource = dt;
                gv1.DataBind();
            }
        }

        protected void btn0_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM [Trip] ORDER BY Username ASC", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gv1.DataSource = null;
                gv1.DataSource = dt;
                gv1.DataBind();
            }
        }

        protected void btn6_Click(object sender, EventArgs e)
        {
            string str = @"Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True";
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT Username,SUM(Travelling) FROM [Trip] GROUP BY Username,Travelling", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gv1.DataSource = null;
                gv1.DataSource = dt;
                gv1.DataBind();
            }
        }
    }
}