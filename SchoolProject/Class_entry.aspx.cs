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
    public partial class Class_entry : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                reset();
                autoid();

            }
        }

        private void autoid()
        {
            string code = "ClassId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(ClassId) from Classes", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            TextBox1.Text = code + i.ToString();
        }

        private void reset()
        {
            classname.ClearSelection();
            classType.ClearSelection();
            section.Text = string.Empty;
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Comm = new SqlCommand("insert into Classes(ClassId,Class,ClassType,Section)values('" + TextBox1.Text.Trim() + "','" + classname.Text.Trim() + "','" + classType.Text.Trim() + "','" + section.Text.Trim() + "')", conn);
            conn.Open();
            Comm.ExecuteNonQuery();
            conn.Close();
            reset();
            autoid();
            GridView1.DataBind();

        }
    }
}