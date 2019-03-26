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
    public partial class WelcomeStaffLoginPage : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveForm_Click(object sender, EventArgs e)
        {
            Conn.Open();
            string dummyun = name.Text;
            string dummypw = password.Text;
            SqlCommand cmd = new SqlCommand("Select * from StaffRegistration where Username='" + name.Text + "' and Password='" + password.Text + "'", Conn);
            cmd.Parameters.AddWithValue("@FullName", dummyun);
            cmd.Parameters.AddWithValue("@Password", dummypw);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                Session["Username"] = name.Text;

                ////Session["pwd"] = TextBox2.Text;


                Response.Redirect("StaffLogin.aspx");
            }
            else
            {


                //string message = string.Empty;
                message.Text = "Username and/or password is incorrect.";

            }

            //cmd.ExecuteNonQuery();
            Conn.Close();

        }
    }
}