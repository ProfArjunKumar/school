using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SchoolProject
{
    public partial class WelcomeAdminLoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveForm_Click(object sender, EventArgs e)
        {
            if(name.Text == "admin" && password.Text == "admin")
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {

                message.Text = "Username and/or password is incorrect.";

            }
        }
    }
}