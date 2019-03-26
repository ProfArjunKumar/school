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
    public partial class StdRegistation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                autogenerated();
                Reset();
                student();
            }
            TxtDate.Text = System.DateTime.Now.ToShortDateString();
        }

        private void Reset()
        {
            TxtDate.Text = string.Empty;
            //DDstudent.SelectedItem.Text = string.Empty;
            TxtAdmsDate.Text = string.Empty;
            TxtSclName.Text = string.Empty;
            TxtStdName.Text = string.Empty;
            TxtAcdYear.Text = string.Empty;
            TxtRollNo.Text = string.Empty;
            Txtgender.Text = string.Empty;
            Txtclass.Text = string.Empty;
            Txtsection.Text=string.Empty;
            TxtDob.Text = string.Empty;
            TxtEmail.Text = string.Empty;
            TxtFatherName.Text = string.Empty;
            TxtMotherName.Text = string.Empty;
            TxtFtrOcc.Text = string.Empty;
            TxtNationality.Text = string.Empty;
            TxtReligion.Text = string.Empty;
            TxtCategory.Text = string.Empty;
            TxtState.Text = string.Empty;
            TxtCountry.Text = string.Empty;
            TxtTemAdd.Text = string.Empty;
            TxtPerAdd.Text = string.Empty;
            TxtCountact.Text = string.Empty;
            TxtAltNo.Text = string.Empty;
            Txtuser.Text = string.Empty;
            Txtpwd.Text = string.Empty;
            txtfee.Text = string.Empty;
            DDStatus.ClearSelection();
        }

        private void autogenerated()
        {
            string code = "Student00";
            string strconn = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(strconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select count(StudentId) from StdRegistation", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();
            i++;
            TxtStdId.Text = code + i.ToString();
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

        protected void Button_Click(object sender, EventArgs e)
        {
            //if (FileUpload1.HasFile)
            //    if (FileUpload2.HasFile)
            //        if (FileUpload3.HasFile)
            //            if (FileUpload4.HasFile)
            //                if (FileUpload5.HasFile)
            //                {
            //                string str = FileUpload1.FileName;
            //                string str1 = FileUpload2.FileName;
            //                string str2 = FileUpload3.FileName;
            //                string str3 = FileUpload4.FileName;
            //                //string str4 = FileUpload5.FileName;
            //                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadedFiles/" + str));
            //                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/UploadedFiles/" + str1));
            //                FileUpload3.PostedFile.SaveAs(Server.MapPath("~/UploadedFiles/" + str2));
            //                FileUpload4.PostedFile.SaveAs(Server.MapPath("~/UploadedFiles/" + str3));
            //                //FileUpload4.PostedFile.SaveAs(Server.MapPath("~/UploadedFiles/" + str4));
            //                string TransferCertificate = "~/UploadedFiles/" + str.ToString();
            //                string StudyCertificate = "~/UploadedFiles/" + str1.ToString();
            //                string DateofBirthCertificate = "~/UploadedFiles/" + str2.ToString();
            //                string CasteCertificate = "~/UploadedFiles/" + str3.ToString();
            //                //string Photo = "~/UploadedFiles/" + str4.ToString();
            //                string StudentId = TxtStdId.Text;
            //                string Date = TxtDate.Text;
            //                string AdmissionNo = DDstudent.SelectedItem.Text;
            //                string AdmissionDate = TxtAdmsDate.Text;
            //                string SchoolName = TxtSclName.Text;
            //                string StudentName = TxtStdName.Text;
            //                string AcadamicYear = TxtAcdYear.Text;
            //                string EnrollmentNo = TxtRollNo.Text;
            //                string Gender = Txtgender.Text;
            //                string Class = Txtclass.Text;
            //                string Section = Txtsection.Text;
            //                string DateofBirth = TxtDob.Text;
            //                string EmailId = TxtEmail.Text;
            //                string FatherName = TxtFatherName.Text;
            //                string MotherName = TxtMotherName.Text;
            //                string ParentOccupation = TxtFtrOcc.Text;
            //                string Nationality = TxtNationality.Text;
            //                string Religion = TxtReligion.Text;
            //                string Category = TxtCategory.Text;
            //                string State = TxtState.Text;
            //                string Country = TxtCountry.Text;
            //                string TemporaryAddress = TxtTemAdd.Text;
            //                string PermanentAddress = TxtPerAdd.Text;
            //                string ContactNo = TxtCountact.Text;
            //                string AlternateContactNo = TxtAltNo.Text;
            //                string Status = DDStatus.SelectedItem.ToString();
            //                string Username = Txtuser.Text;
            //                string Password = Txtpwd.Text;

            //                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
            //                    SqlCommand cmd = new SqlCommand("insert into StdRegistation values(@StudentId,@Date,@AdmissionNo,@AdmissionDate,@SchoolName,@StudentName,@AcadamicYear,@EnrollmentNo,@Gender,@Class,@Section,@DateofBirth,@EmailId,@FatherName,@MotherName,@ParentOccupation,@Nationality,@Religion,@Category,@State,@Country,@TemporaryAddress,@PermanentAddress,@ContactNo,@AlternateContactNo,@TransferCertificate,@StudyCertificate,@DateofBirthCertificate,@CasteCertificate,@Status,@Username,@Password)", con);
            //                    //SqlCommand cmd = new SqlCommand("insert into StdRegistation values (@StudentId,@Date,@AdmissionNo,@AdmissionDate,@SchoolName,@StudentName,@AcadamicYear,@EnrollmentNo,@Gender,@Class,@Section,@DateofBirth,@EmailId,@FatherName,@MotherName,@ParentOccupation,@Nationality,@Religion,@Category,@State,@Country,@TemporaryAddress,@PermanentAddress,@ContactNo,@AlternateContactNo,@TransferCertificate,@StudyCertificate,@DateofBirthCertificate,@CasteCertificate,@Username,@Password,@Status)", con);
            //                    cmd.Parameters.AddWithValue("@StudentId", StudentId);
            //                cmd.Parameters.AddWithValue("@Date", Date);
            //                cmd.Parameters.AddWithValue("@AdmissionNo", AdmissionNo);
            //                cmd.Parameters.AddWithValue("@AdmissionDate", AdmissionDate);
            //                cmd.Parameters.AddWithValue("@SchoolName", SchoolName);
            //                cmd.Parameters.AddWithValue("@StudentName", StudentName);
            //                cmd.Parameters.AddWithValue("@AcadamicYear", AcadamicYear);
            //                cmd.Parameters.AddWithValue("@EnrollmentNo", EnrollmentNo);
            //                cmd.Parameters.AddWithValue("@Gender", Gender);
            //                cmd.Parameters.AddWithValue("@Class", Class);
            //                cmd.Parameters.AddWithValue("@Section", Section);
            //                cmd.Parameters.AddWithValue("@DateofBirth", DateofBirth);
            //                cmd.Parameters.AddWithValue("@EmailId", EmailId);
            //                cmd.Parameters.AddWithValue("@FatherName", FatherName);
            //                cmd.Parameters.AddWithValue("@MotherName", MotherName);
            //                cmd.Parameters.AddWithValue("@ParentOccupation", ParentOccupation);
            //                cmd.Parameters.AddWithValue("@Nationality", Nationality);
            //                cmd.Parameters.AddWithValue("@Religion", Religion);
            //                cmd.Parameters.AddWithValue("@Category", Category);
            //                cmd.Parameters.AddWithValue("@State", State);
            //                cmd.Parameters.AddWithValue("@Country", Country);
            //                cmd.Parameters.AddWithValue("@TemporaryAddress", TemporaryAddress);
            //                cmd.Parameters.AddWithValue("@PermanentAddress", PermanentAddress);
            //                cmd.Parameters.AddWithValue("@ContactNo", ContactNo);
            //                cmd.Parameters.AddWithValue("@AlternateContactNo", AlternateContactNo);
            //                cmd.Parameters.AddWithValue("TransferCertificate", TransferCertificate);
            //                cmd.Parameters.AddWithValue("StudyCertificate", StudyCertificate);
            //                cmd.Parameters.AddWithValue("DateofBirthCertificate", DateofBirthCertificate);
            //                cmd.Parameters.AddWithValue("CasteCertificate", CasteCertificate);
            //                cmd.Parameters.AddWithValue("@Username", Username);
            //                cmd.Parameters.AddWithValue("@Password", Password);
            //                cmd.Parameters.AddWithValue("@Status", Status);
            //                //cmd.Parameters.AddWithValue("Photo", Photo);
            //                con.Open();
            //                cmd.ExecuteNonQuery();
            //                con.Close();
            //                msg.Text = "Submitted Successfully";
            //                msg.ForeColor = System.Drawing.Color.ForestGreen;
            //                GridView1.DataBind();
            //                Reset();
            //                autogenerated();

            //            }
            if (FileUpload1.HasFile)
                if (FileUpload2.HasFile)
                    if (FileUpload3.HasFile)
                        if (FileUpload4.HasFile)
                        {
                            string str = FileUpload1.FileName;
                            string str1 = FileUpload2.FileName;
                            string str2 = FileUpload3.FileName;
                            string str3 = FileUpload4.FileName;
                            string str4 = FileUpload5.FileName;
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadedFiles/" + str));
                            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/UploadedFiles/" + str1));
                            FileUpload3.PostedFile.SaveAs(Server.MapPath("~/UploadedFiles/" + str2));
                            FileUpload4.PostedFile.SaveAs(Server.MapPath("~/UploadedFiles/" + str3));
                            FileUpload5.PostedFile.SaveAs(Server.MapPath("~/UploadedFiles/" + str4));
                            string TransferCertificate = "~/UploadedFiles/" + str.ToString();
                            string StudyCertificate = "~/UploadedFiles/" + str1.ToString();
                            string DateofBirthCertificate = "~/UploadedFiles/" + str2.ToString();
                            string CasteCertificate = "~/UploadedFiles/" + str3.ToString();
                            string StdId = TxtStdId.Text;
                            string Date = TxtDate.Text;
                            string AdmissionNo = DDstudent.SelectedItem.Text;
                            string AdmissionDate = TxtAdmsDate.Text;
                            string SchoolName = TxtSclName.Text;
                            string StudentName = TxtStdName.Text;
                            string AcadamicYear = TxtAcdYear.Text;
                            string EnrollmentNo = TxtRollNo.Text;
                            string Gender = Txtgender.Text;
                            string Class = Txtclass.Text;
                            string Section = Txtsection.Text;
                            string DateofBirth = TxtDob.Text;
                            string EmailId = TxtEmail.Text;
                            string FatherName = TxtFatherName.Text;
                            string MotherName = TxtMotherName.Text;
                            string ParentOccupation = TxtFtrOcc.Text;
                            string Nationality = TxtNationality.Text;
                            string Religion = TxtReligion.Text;
                            string Category = TxtCategory.Text;
                            string State = TxtState.Text;
                            string Country = TxtCountry.Text;
                            string TemporaryAddress = TxtTemAdd.Text;
                            string PermanentAddress = TxtPerAdd.Text;
                            string ContactNo = TxtCountact.Text;
                            string AlternateContactNo = TxtAltNo.Text;
                            string Status = DDStatus.SelectedItem.ToString();
                            string Username = Txtuser.Text;
                            string Password = Txtpwd.Text;
                            string Photo = "~/UploadedFiles/" + str4.ToString();
                            string Fee_Details = txtfee.Text;
                            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString);
                            SqlCommand cmd = new SqlCommand("insert into StdRegistation values (@StudentId,@Date,@AdmissionNo,@AdmissionDate,@SchoolName,@StudentName,@AcadamicYear,@EnrollmentNo,@Gender,@Class,@Section,@DateofBirth,@EmailId,@FatherName,@MotherName,@ParentOccupation,@Nationality,@Religion,@Category,@State,@Country,@TemporaryAddress,@PermanentAddress,@ContactNo,@AlternateContactNo,@TransferCertificate,@StudyCertificate,@DateofBirthCertificate,@CasteCertificate,@Status,@Username,@Password,@Photo,@Fee_Details)", con);
                            cmd.Parameters.AddWithValue("@StudentId", StdId);
                            cmd.Parameters.AddWithValue("@Date", Date);
                            cmd.Parameters.AddWithValue("@AdmissionNo", AdmissionNo);
                            cmd.Parameters.AddWithValue("@AdmissionDate", AdmissionDate);
                            cmd.Parameters.AddWithValue("@SchoolName", SchoolName);
                            cmd.Parameters.AddWithValue("@StudentName", StudentName);
                            cmd.Parameters.AddWithValue("@AcadamicYear", AcadamicYear);
                            cmd.Parameters.AddWithValue("@EnrollmentNo", EnrollmentNo);
                            cmd.Parameters.AddWithValue("@Gender", Gender);
                            cmd.Parameters.AddWithValue("@Class", Class);
                            cmd.Parameters.AddWithValue("@Section", Section);
                            cmd.Parameters.AddWithValue("@DateofBirth", DateofBirth);
                            cmd.Parameters.AddWithValue("@EmailId", EmailId);
                            cmd.Parameters.AddWithValue("@FatherName", FatherName);
                            cmd.Parameters.AddWithValue("@MotherName", MotherName);
                            cmd.Parameters.AddWithValue("@ParentOccupation", ParentOccupation);
                            cmd.Parameters.AddWithValue("@Nationality", Nationality);
                            cmd.Parameters.AddWithValue("@Religion", Religion);
                            cmd.Parameters.AddWithValue("@Category", Category);
                            cmd.Parameters.AddWithValue("@State", State);
                            cmd.Parameters.AddWithValue("@Country", Country);
                            cmd.Parameters.AddWithValue("@TemporaryAddress", TemporaryAddress);
                            cmd.Parameters.AddWithValue("@PermanentAddress", PermanentAddress);
                            cmd.Parameters.AddWithValue("@ContactNo", ContactNo);
                            cmd.Parameters.AddWithValue("@AlternateContactNo", AlternateContactNo);
                            cmd.Parameters.AddWithValue("TransferCertificate", TransferCertificate);
                            cmd.Parameters.AddWithValue("StudyCertificate", StudyCertificate);
                            cmd.Parameters.AddWithValue("DateofBirthCertificate", DateofBirthCertificate);
                            cmd.Parameters.AddWithValue("CasteCertificate", CasteCertificate);
                            cmd.Parameters.AddWithValue("@Status", Status);
                            cmd.Parameters.AddWithValue("@Username", Username);
                            cmd.Parameters.AddWithValue("@Password", Password);
                            cmd.Parameters.AddWithValue("Photo", Photo);
                            cmd.Parameters.AddWithValue("@Fee_Details", Fee_Details);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            msg.Text = "Submitted Successfully";
                            msg.ForeColor = System.Drawing.Color.ForestGreen;
                            GridView1.DataBind();
                            Reset();
                            autogenerated();

                        }
        }
           


        protected void DDstudent_SelectedIndexChanged(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["SmsConnection"].ConnectionString;

            string strQuery = "select Date,Name,Class,Date_Of_Birth,Gender,Father_Name,Contact_Number,Contact_Address,Fee_Details from Admission where Admission_Id = @Admission_Id";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Admission_Id", DDstudent.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {

                    TxtStdName.Text = sdr["Name"].ToString();
                    TxtAdmsDate.Text = sdr["Date"].ToString();
                    Txtclass.Text = sdr["Class"].ToString();
                    TxtDob.Text = sdr["Date_Of_Birth"].ToString();
                    Txtgender.Text = sdr["Gender"].ToString();
                    TxtFatherName.Text = sdr["Father_Name"].ToString();
                    TxtCountact.Text = sdr["Contact_Number"].ToString();
                    TxtPerAdd.Text = sdr["Contact_Address"].ToString();
                    txtfee.Text = sdr["Fee_Details"].ToString();

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