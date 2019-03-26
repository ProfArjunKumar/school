using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace SchoolProject
{
    public partial class School_Timetable : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = DateTime.Now.ToShortDateString();
            if (!IsPostBack)
            {
                autoid();
                Subject();
                reset();

            }
        }

        private void Subject()
        {
            DropDownList1.Items.Insert(0, new System.Web.UI.WebControls.ListItem("SubjectName", "-1"));
            DropDownList1.AppendDataBoundItems = true;
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;

            String strQuery = "select SubjectName from SubjetEntry";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "SubjectName";
                DropDownList1.DataValueField = "SubjectName";
                DropDownList1.DataBind();
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

        private void autoid()
        {
            string code = "TTId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(TimeTableId) from School_TimeTbl", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            TextBox7.Text = code + i.ToString();
        }
        private void reset()
        {
            dd3.ClearSelection();
            txtperiod.Text = string.Empty;
            txtstart.Text = string.Empty;
            dd.ClearSelection();
            DropDownList1.ClearSelection();
            dd1.ClearSelection();
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            //DateTime a = new DateTime();
            //a = DateTime.Now;
            //txtstart.Text = a.ToString("HH:mm:ss");

            SqlCommand Comm = new SqlCommand("insert into School_TimeTbl values('" + TextBox7.Text.Trim() + "','" + TextBox1.Text.Trim() + "','" + dd3.SelectedValue.Trim() + "','" + txtstart.Text.Trim() + "','" + txtperiod.Text.Trim() + "','" + dd.SelectedValue.Trim() + "','" + DropDownList1.SelectedValue.Trim() + "','" + dd1.SelectedValue.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + TextBox4.Text.Trim() + "','" + TextBox5.Text.Trim() + "','" + TextBox6.Text.Trim() + "')", Conn);
            Conn.Open();
            Comm.ExecuteNonQuery();
            Conn.Close();
            reset();
            autoid();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}