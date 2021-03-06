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
    public partial class Fee_type : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdate.Text = DateTime.Now.ToShortDateString();
            if (!IsPostBack)
            {
                autogenerated();
                Reset();
                student();
                //feetype();
            }
        }

        private void autogenerated()
        {
            string code = "FeeId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(FeeId) from FeeDetails", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            txtId.Text = code + i.ToString();
        }

        protected void Reset()
        {

            txtStdName.Text = string.Empty;
            Txtclass.Text = string.Empty;
            Txtsection.Text = string.Empty;
            dd2.ClearSelection();
            dd1.ClearSelection();
            txtcName.Text = string.Empty;
            DDPm.ClearSelection();
            txtBname.Text = string.Empty;
            txtDDcheck.Text = string.Empty;
            txtTfee.Text = string.Empty;
            txtFpaid.Text = string.Empty;
            txtPaidby.Text = string.Empty;
            txtdiscount.Text = string.Empty;
            txtremarks.Text = string.Empty;
        }
        private void student()
        {
            DDstudent.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select Id", "-1"));
            DDstudent.AppendDataBoundItems = true;
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            string strQuery = "select StudentId from StdRegistation";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                DDstudent.DataSource = cmd.ExecuteReader();
                DDstudent.DataTextField = "StudentId";
                DDstudent.DataValueField = "StudentId";
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
        //private void feetype()
        //{
        //    dd2.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select FeeType", "-1"));
        //    dd2.AppendDataBoundItems = true;
        //    string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
        //    string strQuery = "select FeeType from FeeEntry";
        //    SqlConnection con = new SqlConnection(constr);
        //    SqlCommand cmd = new SqlCommand();
        //    cmd.CommandType = CommandType.Text;
        //    cmd.CommandText = strQuery;
        //    cmd.Connection = con;
        //    try
        //    {
        //        con.Open();
        //        DDstudent.DataSource = cmd.ExecuteReader();
        //        DDstudent.DataTextField = "FeeType";
        //        DDstudent.DataValueField = "FeeType";
        //        DDstudent.DataBind();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //    finally
        //    {
        //        con.Close();
        //        con.Dispose();
        //    }
        //}
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Comm = new SqlCommand("insert into FeeDetails values('" + txtId.Text + "','" + txtdate.Text + "','" + DDstudent.SelectedItem.Text + "','" + txtStdName.Text + "','" + Txtclass.Text + "','" + Txtsection.Text + "','" + dd2.SelectedValue + "','" + dd1.Text + "','" + txtcName.Text + "','" + DDPm.SelectedValue + "','" + txtBname.Text + "','" + txtDDcheck.Text + "','" + txtTfee.Text + "','" + txtFpaid.Text + "','" + txtPaidby.Text + "','" + txtdiscount.Text + "','" + txtremarks.Text + "')", Conn);
            Conn.Open();
            Comm.ExecuteNonQuery();
            Conn.Close();
            Reset();
            autogenerated();
        }

        protected void DDstudent_SelectedIndexChanged(object sender, EventArgs e)
        {

            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            string strQuery = "select StudentName,Class,Section from StdRegistation where StudentId = @StudentId";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@StudentId", DDstudent.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {

                    txtStdName.Text = sdr["StudentName"].ToString();

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

        protected void dd2_SelectedIndexChanged(object sender, EventArgs e)
        {

            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            string strQuery = "select Fee from FeeEntry where FeeType = @FeeType and Class=@Class";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@FeeType", dd2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Class", Txtclass.Text);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {


                    //Txtclass.Text = sdr["Class"].ToString();
                    txtTfee.Text = sdr["Fee"].ToString();


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