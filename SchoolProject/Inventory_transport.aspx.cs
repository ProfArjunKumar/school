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
    public partial class Inventory_transport : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtDate.Text = System.DateTime.Now.ToShortDateString();
            if (!IsPostBack)
            {
                autogenerated();
                Reset();
            }
        }

        private void autogenerated()
        {
            string code = "InventoryId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(EquipmentId) from Inventory_transport", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            TxtId.Text = code + i.ToString();
        }

        protected void Reset()
        {
            TxtFstAid.Text = string.Empty;
            TxtNoBuses.Text = string.Empty;

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Comm = new SqlCommand("insert into Inventory_transport values('" + TxtId.Text + "','" + TxtDate.Text + "','" + TxtFstAid.Text + "','" + TxtNoBuses.Text + "')", Conn);
            Conn.Open();
            Comm.ExecuteNonQuery();
            Conn.Close();
            Reset();
            autogenerated();
        }
    }
}