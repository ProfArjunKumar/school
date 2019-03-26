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
    public partial class WelcomeLibrarianLoginPage : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommand cmd = new SqlCommand("Select * from NonTech_Reg", Conn);
            //Conn.Open();
            //SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{
            //    Session["Username"] = dr["FullName"].ToString();

            //    Session["FullName"] = dr["FullName"].ToString();
            //    Session["Username"] = name.Text;

            //}
            //Conn.Close();

            //if (!IsPostBack)
            //{
            //    Session["Username"] = name.Text;
            //    ////Session["pwd"] = TextBox2.Text;

            //}
        }

        protected void saveForm_Click(object sender, EventArgs e)
        {
            Conn.Open();
            string dummyun = name.Text;
            string dummypw = password.Text;
            SqlCommand cmd = new SqlCommand("Select * from NonTech_Reg  where Username='" + name.Text + "' and Password='" + password.Text + "' and Department='Library'", Conn);
            cmd.Parameters.AddWithValue("@Username", dummyun);
            cmd.Parameters.AddWithValue("@Password", dummypw);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                Session["Username"] = name.Text;
                ////Session["pwd"] = TextBox2.Text;

                //Session["FullName"] = dr["FullName"].ToString();


                Response.Redirect("LibraryHomePage.aspx");
            }
            else
            {


                message.Text = "Username and/or password is incorrect.";

            }

            //cmd.ExecuteNonQuery();
            Conn.Close();

        }
    }
}