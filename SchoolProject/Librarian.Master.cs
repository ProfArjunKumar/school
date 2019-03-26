using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolProject
{
    public partial class Librarian : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WelcomeHomePage.aspx");
        }
    }
}