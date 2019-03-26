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
    public partial class Exam_schedule : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtDate.Text = DateTime.Now.ToShortDateString();

            if (!IsPostBack)
            {
                int recentEnquiryId = GetRecentEnquiryId();
                TxtId.Text = Convert.ToString(recentEnquiryId);
                Reset();
            }
        }

        private int GetRecentEnquiryId()
        {
            string strconn = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            SqlCommand cmd = new SqlCommand("select isnull(MAX(ExamId),0) ExamId from ExamSchedule_tbl", conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                return reader.GetInt32(0) + 1;
            }
            conn.Close();
            return 0;
        }

        private void Reset()
        {
            Exam.ClearSelection();
            dd.ClearSelection();
            TxtFDate.Text = string.Empty;
            //TxtTDate.Text = string.Empty;
            dd1.ClearSelection();
            section.ClearSelection();
            TxtStartTime.Text = string.Empty;
            TxtMaxMarks.Text = string.Empty;
            TxtEndTime.Text = string.Empty;
        }




        protected void Button_Click1(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["SmsConnection"].ToString();
            SqlConnection con = new SqlConnection(strCon);
            string ExamId = this.TxtId.Text;
            string Date = this.TxtDate.Text;
            string Exam_Name = this.Exam.SelectedItem.ToString();
            //string ToDate = this.TxtTDate.Text;
            string Shift = this.section.SelectedItem.ToString();
            string Cls = this.dd.SelectedItem.ToString();
            string Subjectname1 = this.dd1.SelectedItem.ToString();
            string FromDate = this.TxtFDate.Text;
            string Cutoffmarks = this.TxtMaxMarks.Text;
            string Starttime = this.TxtStartTime.Text;
            string Endtime = this.TxtEndTime.Text;
            DataTable dt = (DataTable)ViewState["Row"];
            //string ExamId,Exam_Name, Cls, FromDate, ToDate, Shift, Subjectname1;

            foreach (DataRow row in dt.Rows)
            {
                ExamId = row["ExamId"].ToString();
                Date = row["Date"].ToString();
                Exam_Name = row["Exam_Name"].ToString();
                Shift = row["Shift"].ToString();
                Cls = row["Cls"].ToString();
                Subjectname1 = row["Subjectname1"].ToString();
                FromDate = row["FromDate"].ToString();
                Cutoffmarks = row["Cutoffmarks"].ToString();
                Starttime = row["Starttime"].ToString();
                Endtime = row["Endtime"].ToString();
                this.InsertRows(ExamId, Date, Exam_Name, Cls, FromDate, Shift, Subjectname1, Cutoffmarks, Starttime, Endtime);
            }
            gvradd.Visible = false;
        }

        private void InsertRows(string examId, string date, string exam_Name, string cls, string fromDate, string shift, string subjectname1, string cutoffmarks, string starttime, string endtime)
        {
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("insert into ExamSchedule_tbl (ExamId,Date,Exam_Name,Cls,FromDate,Shift, Subjectname1,Cutoffmarks,Starttime,Endtime) values('" + examId.ToString() + "','" + date.ToString() + "','" + exam_Name.ToString() + "','" + cls.ToString() + "','" + fromDate.ToString() + "','" + shift.ToString() + "','" + subjectname1.ToString() + "','" + cutoffmarks.ToString() + "','" + starttime.ToString() + "','" + endtime.ToString() + "')", con))
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Button.Visible = false;
                    GridView1.DataBind();
                    int recentEnquiryId = GetRecentEnquiryId();
                    TxtId.Text = Convert.ToString(recentEnquiryId);
                    Reset();
                }
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            newrowgenarate();
        }

        private void newrowgenarate()
        {
            try
            {
                DataTable datatbl = new DataTable();
                if (ViewState["Row"] != null)
                {
                    datatbl = (DataTable)ViewState["Row"];
                    DataRow dr = datatbl.NewRow();
                    if (datatbl.Rows.Count > 0)
                    {
                        dr["ExamId"] = TxtId.Text;
                        dr["Date"] = TxtDate.Text;
                        dr["Exam_Name"] = Exam.SelectedItem.Text;
                        dr["Cls"] = dd.SelectedItem.Text;
                        dr["FromDate"] = TxtFDate.Text;
                        dr["Shift"] = section.SelectedItem.Text;
                        dr["Subjectname1"] = dd1.SelectedItem.Text;
                        dr["Cutoffmarks"] = TxtMaxMarks.Text;
                        dr["Starttime"] = TxtStartTime.Text;
                        dr["Endtime"] = TxtEndTime.Text;
                        datatbl.Rows.Add(dr);
                        ViewState["Row"] = datatbl;
                        ViewState["CurrentTable"] = datatbl;
                        gvradd.DataSource = ViewState["Row"];
                        gvradd.DataBind();
                        this.Button.Visible = true;

                    }
                }
                else
                {
                    datatbl.Columns.Add("ExamId", typeof(string));
                    datatbl.Columns.Add("Date", typeof(string));
                    datatbl.Columns.Add("Exam_Name", typeof(string));
                    datatbl.Columns.Add("Cls", typeof(string));
                    datatbl.Columns.Add("FromDate", typeof(string));
                    datatbl.Columns.Add("Shift", typeof(string));
                    datatbl.Columns.Add("Subjectname1", typeof(string));
                    datatbl.Columns.Add("Cutoffmarks", typeof(string));
                    datatbl.Columns.Add("Starttime", typeof(string));
                    datatbl.Columns.Add("Endtime", typeof(string));
                    DataRow dr1 = datatbl.NewRow();
                    dr1 = datatbl.NewRow();
                    dr1["ExamId"] = TxtId.Text;
                    dr1["Date"] = TxtDate.Text;
                    dr1["Exam_Name"] = Exam.SelectedItem.Text;
                    dr1["Cls"] = dd.SelectedItem.Text;
                    dr1["FromDate"] = TxtFDate.Text;
                    dr1["Shift"] = section.SelectedItem.Text;
                    dr1["Subjectname1"] = dd1.SelectedItem.Text;
                    dr1["Cutoffmarks"] = TxtMaxMarks.Text;
                    dr1["Starttime"] = TxtStartTime.Text;
                    dr1["Endtime"] = TxtEndTime.Text;
                    datatbl.Rows.Add(dr1);
                    ViewState["Row"] = datatbl;
                    ViewState["CurrentTable"] = datatbl;
                    gvradd.DataSource = ViewState["Row"];
                    gvradd.DataBind();
                    this.Button.Visible = true;

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void gvradd_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            DataTable dt = ViewState["Row"] as DataTable;
            dt.Rows[index].Delete();
            ViewState["Row"] = dt;
            gvradd.DataSource = dt;
            gvradd.DataBind();
        }
    }
}