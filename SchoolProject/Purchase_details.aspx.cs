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
    public partial class Purchase_details : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox10.Text = DateTime.Now.ToShortDateString();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Cmd = new SqlCommand("insert into Purchase_Details(Purchase_Id,Product_Id,Vendor_Id,Product_Name,Product_Quantity,Product_Cost,Purchase_Date,Product_Tax,Product_Total,Date,User_Name,Academic_Year) values ('" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + TextBox4.Text.Trim() + "','" + TextBox5.Text.Trim() + "','" + TextBox6.Text.Trim() + "','" + TextBox7.Text.Trim() + "','" + TextBox8.Text.Trim() + "','" + TextBox9.Text.Trim() + "','" + TextBox10.Text.Trim() + "','" + TextBox11.Text.Trim() + "','" + TextBox12.Text.Trim() + "' )", Conn);
            Conn.Open();
            Cmd.ExecuteNonQuery();
            Conn.Close();
            message.Text = "Values Inserted";
        }
    }
}