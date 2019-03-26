using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace SchoolProject
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int c = 0;
                SqlCommand cmd = new SqlCommand("select count(*) from StdRegistation", con);
                con.Open();
                c = (int)cmd.ExecuteScalar();
                con.Close();
                Label2.Text = c.ToString();
                int a = 0;
                SqlCommand cmd1 = new SqlCommand("select count(*) from StaffRegistration", con);
                con.Open();
                a = (int)cmd1.ExecuteScalar();
                con.Close();
                Label3.Text = a.ToString();
                int b = 0;
                SqlCommand cmd2 = new SqlCommand("select count(*) from AddBook", con);
                con.Open();
                b = (int)cmd2.ExecuteScalar();
                con.Close();
                Label4.Text = b.ToString();
                int d = 0;
                SqlCommand cmd3 = new SqlCommand("select count(*) from BusEntry", con);
                con.Open();
                d = (int)cmd3.ExecuteScalar();
                con.Close();
                Label8.Text = d.ToString();
                int j = 0;
                SqlCommand cmd4 = new SqlCommand("select count(*) from Product_details", con);
                con.Open();
                j = (int)cmd4.ExecuteScalar();
                con.Close();
                Label5.Text = j.ToString();
                int f = 0;
                SqlCommand cmd5 = new SqlCommand("select count(*) from Visitors", con);
                con.Open();
                f = (int)cmd5.ExecuteScalar();
                con.Close();
                Label1.Text = f.ToString();
                int g = 0;
                SqlCommand cmd6 = new SqlCommand("select count(*) from StudAttendance_tbl", con);
                con.Open();
                g = (int)cmd6.ExecuteScalar();
                con.Close();
                Label6.Text = g.ToString();
                int p = 0;
                SqlCommand cmd7 = new SqlCommand("select count(*) from StaffAttendance", con);
                con.Open();
                p = (int)cmd6.ExecuteScalar();
                con.Close();
                Label7.Text = p.ToString();
            }
        }
    }
}