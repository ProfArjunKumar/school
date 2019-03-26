using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SchoolProject
{
    public partial class Attendence_staff : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtDate.Text = System.DateTime.Now.ToShortDateString();
            TxtInTime.Text = System.DateTime.Now.ToShortTimeString();
            TxtInTime.Visible = true;
            TxtOutTime.Visible = false;
            LabOutTime.Visible = false;
            LabInTime.Visible = true;
            TextBox2.Visible = false;
            if (!IsPostBack)
            {
               
                staffid();
               
            }
        }
        protected void Reset()
        {
            //TxtStaffId.Text = string.Empty;
            TxtName.Text = string.Empty;
            TxtDept.Text = string.Empty;
            Status.ClearSelection();
            TxtInTime.Text = string.Empty;
            TxtOutTime.Text = string.Empty;
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strcon);
            string query = "insert into StaffAttendance values(@StaffId,@FullName,@Date,@Department,@Status,@InTime,@OutTime,@Username)";
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = conn;
                    cmd.Parameters.AddWithValue("@StaffId", DDstudent.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Date", TxtDate.Text);
                    cmd.Parameters.AddWithValue("@FullName", TxtName.Text);
                    cmd.Parameters.AddWithValue("@Department", TxtDept.Text);
                    cmd.Parameters.AddWithValue("@Status", Status.SelectedValue);
                    cmd.Parameters.AddWithValue("@InTime", TxtInTime.Text);
                    cmd.Parameters.AddWithValue("@OutTime", TxtOutTime.Text);
                    cmd.Parameters.AddWithValue("@Username", TextBox2.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Reset();
                }
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        //    string q1 = "select * from StaffRegistration where Staf_Id='" + DDstudent.SelectedItem.Text + "'";
        //    SqlCommand cmd = new SqlCommand(q1, Conn);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    //int Total = Convert.ToInt32(dt.Rows[0]["rollno"]);
        //    TxtName.Text = dt.Rows[0]["FullName"].ToString();
        //    TxtDept.Text = dt.Rows[0]["Department"].ToString();
        //    TextBox2.Text = dt.Rows[0]["Username"].ToString();
        //    TxtInTime.Text = System.DateTime.Now.ToShortTimeString();



            //if (!IsPostBack)
            //{
            //    SqlCommand cmd1 = new SqlCommand("select * from StaffRegistration where Username='" + Session["Username"].ToString() + "'", Conn);
            //    Conn.Open();
            //    SqlDataReader dr = cmd1.ExecuteReader();
            //    Conn.Close();
            //}

        //}

        //protected void txtin_Click(object sender, EventArgs e)
        //{
        //    //TxtInTime.Visible = true;
        //    //TxtOutTime.Visible = false;


        //}

        protected void txtout_Click(object sender, EventArgs e)
        {
            TxtInTime.Visible = false;
            TxtOutTime.Visible = true;
            LabInTime.Visible = false;
            LabOutTime.Visible = true;
            TxtOutTime.Text = System.DateTime.Now.ToShortTimeString();

            SqlConnection conn = new SqlConnection(strcon);
            conn.Open();
            SqlCommand cmd = new SqlCommand("UPDATE StaffAttendance SET OutTime = '" + TxtOutTime.Text + "' WHERE StaffId='" + DDstudent.SelectedItem.Text + "' and Date='" + TxtDate.Text + "'", conn);
            //string query = "UPDATE table_name SET OutTime = '" + TxtOutTime.Text + "' WHERE Staf_Id='" + TxtStaffId.Text + "' and Date='" + TxtDate.Text + "'";

            cmd.ExecuteNonQuery();
            conn.Close();

        }
        private void staffid()
        {
            DDstudent.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select Id", "-1"));
            DDstudent.AppendDataBoundItems = true;
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            string strQuery = "select Staf_Id from StaffRegistration";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                DDstudent.DataSource = cmd.ExecuteReader();
                DDstudent.DataTextField = "Staf_Id";
                DDstudent.DataValueField = "Staf_Id";
                //DDstudent.DataTextField = "FullName";
                //DDstudent.DataValueField = "FullName";
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

        protected void TxtStaffId_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
            string q1 = "select * from StaffRegistration where Staf_Id='" + DDstudent.SelectedItem.Text + "'";
            SqlCommand cmd = new SqlCommand(q1, Conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //int Total = Convert.ToInt32(dt.Rows[0]["rollno"]);
            TxtName.Text = dt.Rows[0]["FullName"].ToString();
            TxtDept.Text = dt.Rows[0]["Department"].ToString();
            TextBox2.Text = dt.Rows[0]["Username"].ToString();
            TxtInTime.Text = System.DateTime.Now.ToShortTimeString();

        }
    }
}
