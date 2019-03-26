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
    public partial class StaffaddStudentattendance : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //GridView2.Visible = false;
                Button1.Visible = false;
                TxtDate.Text = System.DateTime.Now.ToShortDateString();
                GridView1.Visible = true;
                GridView2.Visible = false;
               

            }

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            string strQuery = "select StudentId,StudentName,Class,Section, Username from StdRegistation ";
            SqlConnection con = new SqlConnection(strcon);
            SqlDataAdapter sda = new SqlDataAdapter(strQuery, con);
            DataTable ds = new DataTable();
  
            sda.Fill(ds);
            //TextBox1.Text = ds.Rows[0]["Username"].ToString();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Button1.Visible = true;
            btnadd.Visible = false;
            GridView1.Visible = true;
            GridView2.Visible = false;
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[7] {
                        new DataColumn("StudentId", typeof(string)),
                        new DataColumn("StudentName", typeof(string)),
                        new DataColumn("Class",typeof(string)),
                        new DataColumn("Section",typeof(string)),
                        new DataColumn("TodayDate",typeof(string)),
                        new DataColumn("Status", typeof(string)), 
                        new DataColumn("Username", typeof(string)), });
            foreach (GridViewRow row in GridView1.Rows)
            {

                string StudentId = row.Cells[0].Text;
                string StudentName = row.Cells[1].Text;
                string Class = row.Cells[2].Text;
                string Section = row.Cells[3].Text;
                string TodayDate = TxtDate.Text;
                string Status = (row.Cells[5].FindControl("DropDownList1") as DropDownList).SelectedItem.ToString();
                string Username = row.Cells[6].Text;
                dt.Rows.Add(StudentId, StudentName, Class, Section, TodayDate,Status, Username);
              

            }
            if (dt.Rows.Count > 0)
            {
                string consString = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;

                using (SqlConnection con = new SqlConnection(consString))
                {
                    using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
                    {
                        //Set the database table name
                        sqlBulkCopy.DestinationTableName = "dbo.StudAttendance_tbl";

                        //[OPTIONAL]: Map the DataTable columns with that of the database table

                        sqlBulkCopy.ColumnMappings.Add("StudentId", "StudentId");
                        sqlBulkCopy.ColumnMappings.Add("StudentName", "StudentName");
                        sqlBulkCopy.ColumnMappings.Add("Class", "Class");
                        sqlBulkCopy.ColumnMappings.Add("Section", "Section");
                        sqlBulkCopy.ColumnMappings.Add("TodayDate", "TodayDate");
                        sqlBulkCopy.ColumnMappings.Add("Status", "Status");
                        sqlBulkCopy.ColumnMappings.Add("Username", "Username");
                        //cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
                        con.Open();
                        sqlBulkCopy.WriteToServer(dt);
                        ////cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            GridView1.Visible = false;
            GridView2.Visible = true;
            Button1.Visible = false;

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                Label Label1 = (e.Row.FindControl("Label1") as Label);
                Label1.Text = TxtDate.Text;
              


            }
        }
    }
}