using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace SchoolProject
{
    public partial class Gaurdian_std : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtDate.Text = System.DateTime.Now.ToShortDateString();
            if (!IsPostBack)
            {
               
                studentid();
                
            }
        }
        protected void Reset()
        {
           
            TxtDate.Text = string.Empty;
            TxtStdName.Text = string.Empty;
            Txtclass.Text = string.Empty;
            TxtSection.Text = string.Empty;
            TxtGdName.Text = string.Empty;
            TxtRelation.Text = string.Empty;
            TxtGdPhone.Text = string.Empty;
            TxtGdOccupation.Text = string.Empty;
            TxtAddress.Text = string.Empty;
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Comm = new SqlCommand("insert into Parents_info values('" +DDstudent.SelectedItem.Text + "','" + TxtDate.Text + "','" + TxtStdName.Text + "','" +Txtclass.Text + "','" + TxtSection.Text + "','" + TxtGdName.Text + "','" + TxtRelation.Text + "','" + TxtGdPhone.Text + "','" + TxtGdOccupation.Text + "','" + TxtAddress.Text + "')", Conn);
            Conn.Open();
            Comm.ExecuteNonQuery();
            Conn.Close();
            GridView1.DataBind();
            Reset();
        }
        private void studentid()
        {
            DDstudent.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select Id", "-1"));
            DDstudent.AppendDataBoundItems = true;
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            string strQuery = "select StudentId from StdRegistation";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                DDstudent.DataSource = cmd.ExecuteReader();
                DDstudent.DataTextField = "StudentId";
                DDstudent.DataValueField = "StudentId";
                DDstudent.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        protected void DDstudent_SelectedIndexChanged(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;

            string strQuery = "select StudentName,Class,Section from StdRegistation where StudentId = @StudentId";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@StudentId", DDstudent.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {

                    TxtStdName.Text = sdr["StudentName"].ToString();
                    Txtclass.Text = sdr["Class"].ToString();
                    TxtSection.Text = sdr["Section"].ToString();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
}