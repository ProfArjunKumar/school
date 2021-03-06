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
    public partial class LibraryAddBookPage : System.Web.UI.Page
    {
        SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDate.Text = DateTime.Now.ToShortDateString();

            if (!IsPostBack)
            {
                autogenerated();
                Reset();
               
            }
        }
        private void Class()
        {
            DDClass.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select Class", "-1"));
            DDClass.AppendDataBoundItems = true;
            string constr = ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString;
            string strQuery = "select Class from Class";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                DDClass.DataSource = cmd.ExecuteReader();
                DDClass.DataTextField = "Class";
                DDClass.DataValueField = "Class";
                DDClass.DataBind();
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

        private void autogenerated()
        {
            string code = "BookId-0";
            string strconn = ConfigurationManager.ConnectionStrings["SMSConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(Book_Id) from AddBook", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            txtBook_Id.Text = code + i.ToString();
        }

        protected void Reset()
        {
            txtBook_Name.Text = string.Empty;
            txtCopies.Text = string.Empty;
            txtprice.Text = string.Empty;
            txtStock.Text = string.Empty;
            DDClass.ClearSelection();
            txtBook_Number.Text = string.Empty;


        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlCommand Cmd = new SqlCommand("insert into AddBook values ('" + txtBook_Id.Text.Trim() + "','" + txtDate.Text.Trim() + "', '" + txtBook_Name.Text.Trim() + "','" + txtBook_Number.Text.Trim() + "','" + DDClass.SelectedValue.Trim() + "','" + txtCopies.Text.Trim() + "','" + txtprice.Text.Trim() + "','" + txtStock.Text.Trim() + "')", Conn);
            Conn.Open();
            Cmd.ExecuteNonQuery();
            Conn.Close();
            Reset();
            autogenerated();
            message.Text = "Values Inserted";
        }
    }
}