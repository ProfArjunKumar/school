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
    public partial class Product_Details : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox4.Text = DateTime.Now.ToShortDateString();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Cmd = new SqlCommand("insert into Product_details(Product_Id,Vendor_Id,Product_Name,Date,User_Name,Academic_Year) values ('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + TextBox4.Text.Trim() + "','" + TextBox5.Text.Trim() + "','" + TextBox6.Text.Trim() + "')", Conn);
            Conn.Open();
            Cmd.ExecuteNonQuery();
            Conn.Close();
            message.Text = "Values Inserted";
        }
    }
}