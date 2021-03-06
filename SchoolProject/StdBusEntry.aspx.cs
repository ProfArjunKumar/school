﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace SchoolProject
{
    public partial class StdBusEntry : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtDate.Text = System.DateTime.Now.ToShortDateString();

            if (!IsPostBack)
            {
                //autogenerated();
                Reset();
                student();
                bus();
            }
        }

        //private void autogenerated()
        //{
        //    string code = "0";
        //    string strconn = ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString;
        //    SqlConnection conn = new SqlConnection(strconn);
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand("Select count(AdmissionNo) from StdBusEntry", conn);
        //    int i = Convert.ToInt32(cmd.ExecuteScalar());
        //    conn.Close();
        //    i++;
        //    DDstudent.SelectedItem.Text = code + i.ToString();
        //}

        protected void Reset()
        {
            TxtStdName.Text = string.Empty;
            Txtclass.Text = string.Empty;
            Txtsection.Text = string.Empty;
            //DDbus.SelectedItem.Text = string.Empty;
            TxtLocation.Text = string.Empty;
            TxtJDate.Text = string.Empty;
            Status.ClearSelection();
        }
        private void student()
        {
            DDstudent.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select Id", "-1"));
            DDstudent.AppendDataBoundItems = true;
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            string strQuery = "select Admission_id from Admission";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                DDstudent.DataSource = cmd.ExecuteReader();
                DDstudent.DataTextField = "Admission_id";
                DDstudent.DataValueField = "Admission_id";
                DDstudent.DataBind();
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
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Comm = new SqlCommand("insert into StdBusEntry values('" + DDstudent.SelectedItem.Text + "','" + TxtDate.Text + "','" + TxtStdName.Text + "','" + Txtclass.Text + "','" + Txtsection.Text + "','" + DDbus.SelectedItem.Text + "','" + TxtLocation.Text + "','" + TxtJDate.Text + "','" + Status.SelectedValue + "')", Conn);
            Conn.Open();
            Comm.ExecuteNonQuery();
            Conn.Close();
            GridView1.DataBind();
            Reset();
            //autogenerated();
        }

        protected void DDstudent_SelectedIndexChanged(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;

            string strQuery = "select StudentName,Class,Section from StdRegistation where AdmissionNo = @AdmissionNo";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@AdmissionNo", DDstudent.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {

                    TxtStdName.Text = sdr["StudentName"].ToString();
                    Txtclass.Text = sdr["Class"].ToString();
                    Txtsection.Text = sdr["Section"].ToString();

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

        protected void DDbus_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}