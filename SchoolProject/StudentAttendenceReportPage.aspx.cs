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
    public partial class StudentAttendenceReportPage : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //TxtDate.Text = System.DateTime.Now.ToShortDateString();
            Conn.Open();
            SqlCommand cmd = new SqlCommand("select * from StudAttendance_tbl where Username='" + Session["Username"].ToString() + "'", Conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //SqlDataReader dr = cmd.ExecuteReader();
            //gridview1.DataSource = dr;
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //gridview1.DataSource = dt;
            gridview1.DataBind();
            Conn.Close();

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //    Conn.Open();
        //    SqlCommand cmd = new SqlCommand("select * from StudAttendance_tbl where Username='" + Session["Username"].ToString() + "'and TodayDate='" + TxtDate.Text + "'", Conn);
        //    SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //    //SqlDataReader dr = cmd.ExecuteReader();
        //    //gridview1.DataSource = dr;
        //    DataTable dt = new DataTable();
        //    sda.Fill(dt);
        //    gridview1.DataSource = dt;
        //    gridview1.DataBind();
        //    Conn.Close();
        //}
    }
}