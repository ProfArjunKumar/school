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
    public partial class StudentChangePassword : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void saveForm_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from StdRegistation where Username='" + Session["Username"].ToString() + "'", Conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (txtpwd1.Text.ToString() == dt.Rows[0]["Password"].ToString())
            {
                Conn.Open();
                cmd = new SqlCommand("update StdRegistation set Password=@Password where Username='" + Session["Username"].ToString() + "'", Conn);
                cmd.Parameters.AddWithValue("@Password", txtpwd2.Text);
                //cmd.Parameters.AddWithValue("@confpass", txtpwd3.Text);
                cmd.ExecuteNonQuery();
                Conn.Close();
                Label1.Text = "Password changed Successfully";
            }
            else
            {
                Label1.Text = "Please enter correct Current password";
            }
        }
    }
}