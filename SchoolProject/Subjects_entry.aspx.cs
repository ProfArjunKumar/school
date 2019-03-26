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
    public partial class Subjects_entry : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdate.Text = DateTime.Now.ToShortDateString();
            if (!IsPostBack)
            {
                autoid();
                reset();
            }
            ////GridView1.DataBind();
        }

        private void autoid()
        {
            string code = "SubId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(SubId) from SubjetEntry", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            txtId.Text = code + i.ToString();
        }

        private void reset()
        {
            ddsubname.ClearSelection();

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Comm = new SqlCommand("insert into SubjetEntry values('" + txtId.Text.Trim() + "','" + txtdate.Text.Trim() + "','" + ddsubname.SelectedValue.Trim() + "')", Conn);
            Conn.Open();
            Comm.ExecuteNonQuery();
            Conn.Close();
            reset();
            autoid();
        }
    }
}