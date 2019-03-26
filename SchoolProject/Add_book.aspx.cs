using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SchoolProject
{
    public partial class Add_book : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}