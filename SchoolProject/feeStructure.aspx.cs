﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace SchoolProject
{
    public partial class feeStructure : System.Web.UI.Page
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

        private void autogenerated()
        {
            string code = "FeeId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(FeeId) from Fee_Structure", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            txtFeeId.Text = code + i.ToString();
        }

        protected void Reset()
        {
            dd.ClearSelection();
            txtadfee.Text = string.Empty;
            txtSchoolfee.Text = string.Empty;
            txttransfee.Text = string.Empty;
            txtbookfee.Text = string.Empty;
            txtbuliding.Text = string.Empty;
            txtstationaryfee.Text = string.Empty;
            txttotalFee.Text = string.Empty;
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Comm = new SqlCommand("insert into Fee_Structure values('" + txtFeeId.Text + "','" + txtdate.Text + "','" + dd.SelectedValue + "','" + txtadfee.Text + "','" + txtSchoolfee.Text + "','" + txttransfee.Text + "','" + txtbookfee.Text + "','" + txtbuliding.Text + "','" + txtstationaryfee.Text + "','" + txttotalFee.Text + "')", Conn);
            Conn.Open();
            Comm.ExecuteNonQuery();
            Conn.Close();
            Reset();
            autogenerated();
        }
    }
}