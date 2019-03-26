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
    public partial class AccountantProfileDetails : System.Web.UI.Page
    {
       
            SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string q1 = "select * from NonTech_Reg  where Username='" + Session["Username"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(q1, Conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //int Total = Convert.ToInt32(dt.Rows[0]["rollno"]);
            Label1.Text = dt.Rows[0]["FullName"].ToString();
            Label2.Text = dt.Rows[0]["Department"].ToString();

            Image1.ImageUrl = dt.Rows[0]["Photo"].ToString();

            Label5.Text = dt.Rows[0]["ContactNo"].ToString();
            Label6.Text = dt.Rows[0]["AltNumber"].ToString();
            Label4.Text = dt.Rows[0]["Email"].ToString();
            Label3.Text = dt.Rows[0]["Address"].ToString();
            if (!IsPostBack)
            {
                SqlCommand cmd1 = new SqlCommand("select * from NonTech_Reg  where Username='" + Session["Username"].ToString() + "'", Conn);
                Conn.Open();
                SqlDataReader dr = cmd1.ExecuteReader();
                Conn.Close();
            }
        }
    }
}