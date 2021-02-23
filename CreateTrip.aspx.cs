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
    public partial class CreateTrip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveTrip_Click(object sender, EventArgs e)
        {

            int a = Convert.ToInt32(txtHotel.Text);
            int b = Convert.ToInt32(txtFood.Text);
            int c = Convert.ToInt32(txtTravelling.Text);
            int d = Convert.ToInt32(txtOther.Text);
            int final = a + b + c + d;
            txtTotalAmount.Text = final.ToString();

            SqlConnection con = new SqlConnection("Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Trip]
           ([UserName]
           ,[Tname]
           ,[Tstartdate]
           ,[Ttype]
           ,[Tenddate]
           ,[Expense]
           ,[Persons]
           ,[Food]
           ,[Hotel]
           ,[Travelling]
           ,[Other])
           Values 
          ('" + txtUsername.Text.Trim()+"','"+txtTripName.Text.Trim()+"','"+txtTripStartDate.Text+"','"+ddlTripType.SelectedItem.Value+"','"+txtTripEndDate.Text+"','"
          +final+"','"+txtNoOfPersons.Text.Trim()+"','"+txtFood.Text.Trim()+"','"+txtHotel.Text.Trim()+"','"+txtTravelling.Text.Trim()+"','"
          +txtOther.Text.Trim()+"')",con);
           cmd.ExecuteNonQuery();

            SqlCommand cmd1 = new SqlCommand(@"INSERT INTO [dbo].[Traveller]
           ([TravellerName]
           ,[TripName]) Values ('" + txtUsername.Text.Trim() + "','" + txtTripName.Text.Trim() + "')", con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Create Trip Successfully')</script>");

  
        }

        protected void btnDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}