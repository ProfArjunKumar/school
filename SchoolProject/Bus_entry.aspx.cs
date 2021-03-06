﻿using System;
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
    public partial class Bus_entry : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdate.Text = DateTime.Now.ToShortDateString();
            if (!IsPostBack)
            {
                autogenerated();
                reset();

            }
            ////GridView1.DataBind();

        }
        private void reset()
        {

            txtbusno.Text = string.Empty;
            txtaltr.Text = string.Empty;
            txtdname.Text = string.Empty;
            txtfrom.Text = string.Empty;
            txtIn.Text = string.Empty;
            txtlno.Text = string.Empty;
            txtout.Text = string.Empty;
            txtphn.Text = string.Empty;
            txtsprt.Text = string.Empty;
            txtsptno.Text = string.Empty;
            txtto.Text = string.Empty;
            txtoccp.Text = string.Empty;
            txtaddr.Text = string.Empty;
            ddtype.ClearSelection();

        }
        private void autogenerated()
        {
            string code = "BusId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(Bus_No) from BusEntry", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            txtId.Text = code + i.ToString();
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Comm = new SqlCommand("insert into BusEntry(BusId,Date,Bus_No,Type,OutTime,InTime,FromLoc,ToLoc,Occupancy,Driver_Name,Address,Driver_License,Dcontact_No,AlternateNo,Supporter_Name,Supporter_ContactNo) values('" + txtId.Text.Trim() + "','" + txtdate.Text.Trim() + "','" + txtbusno.Text.Trim() + "','" + ddtype.SelectedValue.ToString() + "','" + txtout.Text.Trim() + "','" + txtIn.Text.Trim() + "','" + txtfrom.Text.Trim() + "','" + txtto.Text.Trim() + "','" + txtoccp.Text.Trim() + "','" + txtdname.Text.Trim() + "','" + txtaddr.Text.Trim() + "','" + txtlno.Text.Trim() + "','" + txtphn.Text.Trim() + "','" + txtaltr.Text.Trim() + "','" + txtsprt.Text.Trim() + "','" + txtsptno.Text.Trim() + "')", Conn);
            Conn.Open();
            Comm.ExecuteNonQuery();
            Conn.Close();
            reset();
            autogenerated();

        }
    } 
}