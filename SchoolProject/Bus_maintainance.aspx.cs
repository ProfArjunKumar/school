using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace SchoolProject
{
    public partial class Bus_maintainance : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        string str;
        SqlCommand com;
        int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdate.Text = DateTime.Now.Date.ToShortDateString();

            str = "select count(Busid) from Bus_maintence";
            com = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(com.ExecuteScalar()) + 1;
            txtId.Text = " " + count;
            con.Close();
        }
        private void Reset()
        {
            txtProseg.Text = string.Empty;
            txtFuel.Text = string.Empty;
            txtProcode.Text = string.Empty;
            txtProdis.Text = string.Empty;
            txtservi.Text = string.Empty;
            txtexpiredate.Text = string.Empty;
            txtProweig.Text = string.Empty;

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("insert into Bus_maintence values('" + txtId.Text.Trim() + "','" + txtdate.Text.Trim() + "','" + txtProseg.Text.Trim() + "','" + txtFuel.Text.Trim() + "','" + txtProcode.Text.Trim() + "','" + txtProdis.Text.Trim() + "','" + txtservi.Text.Trim() + "','" + txtexpiredate.Text.Trim() + "','" + txtProweig.Text.Trim() + "')", con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Reset();
            //string script = "window.onload = function(){ alert('";
            ////script += message;
            //script += "');";
            //script += "window.location = '";
            //script += Request.Url.AbsoluteUri;
            //script += "'; }";
            //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }
    }
}
