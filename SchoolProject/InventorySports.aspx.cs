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
    public partial class InventorySports : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdate.Text = DateTime.Now.Date.ToShortDateString();
            if (!IsPostBack)
            {
                autogenerated();
                Reset();
            }
        }

        private void Reset()
        {
            txtCricketkits.Text = string.Empty;
            txtFballKit.Text = string.Empty;
            txtVolleyball.Text = string.Empty;
            txtBadminton.Text = string.Empty;
            txtfak.Text = string.Empty;
        }

        private void autogenerated()
        {
            string code = "InventoryId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(SportsId) from Inventory_sports", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            TxtId.Text = code + i.ToString();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("insert into Inventory_sports values('" + TxtId.Text.Trim() + "','" + txtdate.Text.Trim() + "','" + txtCricketkits.Text.Trim() + "','" + txtFballKit.Text.Trim() + "','" + txtVolleyball.Text.Trim() + "','" + txtBadminton.Text.Trim() + "','" + txtfak.Text.Trim() + "')", con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            autogenerated();
            Reset();
        }
    }
}
