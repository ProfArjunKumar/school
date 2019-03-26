<%@ Page Title="" Language="C#" MasterPageFile="~/WelcomeMaster.Master" AutoEventWireup="true" CodeBehind="WelcomeHomePage.aspx.cs" Inherits="SchoolProject.WelcomeHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1{
            color:#4A1528;
            font-family:'Times New Roman', Times, serif;
            text-align:center;

        }
        b{
            color:dodgerblue;
            font-family:'Times New Roman', Times, serif;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div class="main-panel" > 
        <div class="main-content" style=" >
            <div class="content-wrapper">
                <!-- Wizard Starts -->
                 <section id="icon-tabs">
                <div class="row">
                    <div class="col-12">
                        <div class="content-header">
                                  
                        </div>
                    </div>
                </div>
             
                   
                 
                            <%--<div class="card">
                               
                                <div class="card-body">--%>
                                    <div class="card-block">
                                        <fieldset>
                                         
                <div class="row">
                    <div class="col-lg-8">
                  <div class="form-group">
                     <h1>STUDENT MANAGEMENT SYSTEM</h1>
                      </div>
                    </div>
                    </div>
                                            </fieldset>
                                        <fieldset>
                                        <div class="row">
                                           
                    <div class="col-md-4">
                  <div class="form-group">
                      <a href="WelcomeAdminLoginPage.aspx"><img src="images/iconLogin.png" width="30%" height="20%"/><br /><b>ADMIN</b></a>
                      </div>
                    </div>
                     <div class="col-md-4">
                    <div class="form-group">
                    <a href="WelcomeStaffLoginPage.aspx"><img src="images/feature_users[1].png" width="30%" height="20%"/><br /><b>STAFF</b></a>
                      </div>
                    </div>
                      <div class="col-md-4">
                      <div class="form-group">
                    <a href="WelcomeLibrarianLoginPage.aspx"><img src="images/Teacher.png" width="30%" height="20%"/><br /><b>LIBRARIAN</b></a>
                      </div>
                    </div>
                    <div class="col-md-4">
                  <div class="form-group">
                    <a href="WelcomeAccountantLoginPage.aspx"><img src="images/acc.png" width="30%" height="20%"/><br /><b>ACCOUNTANT</b></a>
                      </div>
                              
                    </div>
                      <div class="col-md-4">
                  <div class="form-group">
                    <a href="WelcomeStudentLoginPage.aspx"><img src="images/circler.png" width="30%" height="20%"/><br /><b>STUDENT</b></a>
                      </div>
                          </div>
                         </div>
              
                                            </fieldset>
                                       
                                      <%--  <img src="images/SmartSuite-School-Attendance-Management-System1.jpg" width="100%" height="100%" />--%>
                                       <%-- <a href="WelcomeAdminLoginPage.aspx"><img src="images/admin.png" width="20%" height="10%"/></a>--%>
                                 <%--<img src="images/unnamed.jpg" width="100%" height="100%" />--%>
                                    </div>
                     </section>
                                    </div>
                              
              
                  
                </div>
          </div>
        
</asp:Content>
