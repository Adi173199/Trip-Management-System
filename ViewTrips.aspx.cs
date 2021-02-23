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
    public partial class ViewTrips : System.Web.UI.Page
    {
       string str= @"Data Source=LAPTOP-I47V1330;Initial Catalog=TravelManagement;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM [Trip]", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                gvViewTrip.DataSource = null;
                gvViewTrip.DataSource = dt;
                gvViewTrip.DataBind();
            }
        }
    }
}