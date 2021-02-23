using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TripManagement_System
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void btnCreateTrip_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateTrip.aspx");
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }

        protected void btnViewTrip_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewTrips.aspx");
        }
    }
}