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
    public partial class Vendor_details : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox7.Text = DateTime.Now.ToShortDateString();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Cmd = new SqlCommand("insert into Vendor_details(Vendor_Id,VendorReg_No,Vendor_Name,Vendor_Address,Office_Contact,Mobile_No,Date,User_Name,Academic_Year) values ('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + TextBox4.Text.Trim() + "','" + TextBox5.Text.Trim() + "','" + TextBox6.Text.Trim() + "','" + TextBox7.Text.Trim() + "','" + TextBox8.Text.Trim() + "','" + TextBox9.Text.Trim() + "')", Conn);
            Conn.Open();
            Cmd.ExecuteNonQuery();
            Conn.Close();
            message.Text = "Values Inserted";
        }
    }
}