using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace SchoolProject
{
    public partial class Driver_Attendance : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        string str;
        SqlCommand com;
        int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdate.Text = DateTime.Now.Date.ToShortDateString();
            str = "select count(*) from Inventory_lab";
            com = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt16(com.ExecuteScalar()) + 1;
            //txtId.Text = " " + count;
            con.Close();
            bus();
        }
        private void Reset()
        {
            txtProseg.Text = string.Empty;
            txtFuel.Text = string.Empty;
            status.ClearSelection();
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("insert into Driver_attendance values('" + DDbus.Text.Trim() + "','" + txtdate.Text.Trim() + "','" + txtProseg.Text.Trim() + "','" + txtFuel.Text.Trim() + "','" + status.SelectedValue.Trim() + "')", con);
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
        private void bus()
        {
            DDbus.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select Bus_No", "-1"));
            DDbus.AppendDataBoundItems = true;
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            string strQuery = "select Bus_No,FromLoc,ToLoc,Bus_No + '-' + FromLoc + '-' + ToLoc as Bus from BusEntry";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                DDbus.DataSource = cmd.ExecuteReader();
                DDbus.DataTextField = "Bus";
                DDbus.DataValueField = "Bus_No";
                DDbus.DataBind();
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

        protected void DDbus_SelectedIndexChanged(object sender, EventArgs e)
        {
          
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;

            string strQuery = "select Driver_Name from BusEntry where Bus_No = @Bus_No";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Bus_No", DDbus.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {

                    txtProseg.Text = sdr["Driver_Name"].ToString();
                  

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