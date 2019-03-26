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
    public partial class StdPromotion : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtDate.Text = System.DateTime.Now.ToShortDateString();
        }
        protected void Reset()
        {
            TxtStdId.Text = string.Empty;
            TxtStdName.Text = string.Empty;
            Class.ClearSelection();
            Section.ClearSelection();
            PstdId.Text = string.Empty;
            TxtSName.Text = string.Empty;
            TxtAcYear.Text = string.Empty;
            ShiftClass.ClearSelection();
            PSection.ClearSelection();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand Comm = new SqlCommand("insert into StdPromotion values('" + TxtStdId.Text + "','" + TxtStdName.Text + "','" + Class.SelectedValue + "','" + Section.SelectedValue + "','" + PstdId.Text + "','" + TxtSName.Text + "','" + TxtAcYear.Text + "','" + ShiftClass.SelectedValue + "','" + PSection.SelectedValue + "')", Conn);
            Conn.Open();
            Comm.ExecuteNonQuery();
            Conn.Close();
            Reset();
        }
    }
}