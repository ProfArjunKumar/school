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
    public partial class StudentProfileDetails : System.Web.UI.Page
    {

        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string q1 = "select * from StdRegistation where Username='" + Session["Username"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(q1, Conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //int Total = Convert.ToInt32(dt.Rows[0]["rollno"]);
            Label1.Text = dt.Rows[0]["StudentName"].ToString();
            Label2.Text = dt.Rows[0]["Class"].ToString();
            Label4.Text = dt.Rows[0]["Section"].ToString();
            Image1.ImageUrl = dt.Rows[0]["Photo"].ToString();
            Label3.Text = dt.Rows[0]["Fathername"].ToString();
            Label5.Text = dt.Rows[0]["Mothername"].ToString();
            Label6.Text = dt.Rows[0]["ParentOccupation"].ToString();
            Label7.Text = dt.Rows[0]["EmailId"].ToString();
            Label8.Text = dt.Rows[0]["ContactNo"].ToString();
            if (!IsPostBack)
            {
                SqlCommand cmd1 = new SqlCommand("select * from StaffRegistration where Username='" + Session["Username"].ToString() + "'", Conn);
                Conn.Open();
                SqlDataReader dr = cmd1.ExecuteReader();
                Conn.Close();
            }
        }
    }
}