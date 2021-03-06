﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace SchoolProject
{
    public partial class Notification : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdate.Text = DateTime.Now.ToShortDateString();
            if (!IsPostBack)
            {
                autogenerated();
                Reset();
            }
        }

        private void Reset()
        {
            txtcreate.Text = string.Empty;
            txttitle.Text = string.Empty;
            txtsent.Text = string.Empty;
            txtsub.Text = string.Empty;
            txtdesc.Text = string.Empty;

        }

        private void autogenerated()
        {
            string code = "NotificationId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(Notification_Id) from Notifications", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            txtId.Text = code + i.ToString();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Cmd = new SqlCommand("insert into Notifications values ('" + txtId.Text.Trim() + "','" + txtdate.Text.Trim() + "','" + txtcreate.Text.Trim() + "','" + txttitle.Text.Trim() + "','" + txtsent.Text.Trim() + "','" + txtsub.Text.Trim() + "','" + txtdesc.Text.Trim() + "')", Conn);
            Conn.Open();
            Cmd.ExecuteNonQuery();
            Conn.Close();
            Reset();
            autogenerated();
            message.Text = "Values Inserted";
        }
    }
}