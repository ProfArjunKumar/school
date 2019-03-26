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
    public partial class FeeEntry : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            txtdate.Text = DateTime.Now.ToShortDateString();
            if (!IsPostBack)
            {
                autoID();
                reset();
            }

        }

        private void reset()
        {

            ddclass.ClearSelection();
            ddfee.ClearSelection();
            txtfee.Text = string.Empty;
        }

        private void autoID()
        {
            string code = "FeeId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(FeeId) from FeeEntry", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            txtfeeid.Text = code + i.ToString();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Comm = new SqlCommand("insert into FeeEntry values('" + txtfeeid.Text.Trim() + "','" + txtdate.Text.Trim() + "','" + ddfee.SelectedValue.ToString() + "','" + ddclass.SelectedValue.ToString() + "','" + txtfee.Text.Trim() + "')", conn);
            conn.Open();
            Comm.ExecuteNonQuery();
            conn.Close();
            autoID();
            reset();

        }
    }
}