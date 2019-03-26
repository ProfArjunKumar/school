<%@ Page Title="" Language="C#" MasterPageFile="~/WelcomeMaster.Master" AutoEventWireup="true" CodeBehind="WelcomeAdminLoginPage.aspx.cs" Inherits="SchoolProject.WelcomeAdminLoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel" style="background-color:whitesmoke"> 
        <div class="main-content" style="background-color:whitesmoke">
                       <div class="content-wrapper" style="background-color:whitesmoke">
                <!-- Wizard Starts -->
              
                <div class="row">
                    <div class="col-12">
                        <div class="content-header">ADMIN LOGIN</div>
                    </div>
                </div>
                <section id="icon-tabs">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                               
                                <div class="card-body" style="background-color:whitesmoke">
                                    <div class="card-block" style="background-color:whitesmoke">
                                         
                                            <!-- Step 1 -->

                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="Labname" Text="Username"></asp:Label>
                                                           
   
                                                        <div class="form-group">
                                                            <asp:TextBox runat="server" ID="name" class="form-control" />
                                                              <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="name" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                        </div>  
                                                    </div>
                                                  <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="Labpassword" Text="Password"></asp:Label>
                                                            <asp:TextBox runat="server" ID="password" TextMode="Password" class="form-control" />
                                                              <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="password" ErrorMessage="Please Enter Field" />

                                                        </div>
                                                    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Button ID="SubmitButton" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="saveForm_Click" />
                                                        </div>
                                                    </div>
                                                    
                                                    </div>
                                                      </div>
                                           
                                                <asp:Label ID="message" runat="server" style="color:red"/>

                                                    </fieldset>
                                        </div>
                                    </div>
                                </div>
                         </div>
                  </div>
                    </section>
                  
                    </div>
            </div>
          </div>
</asp:Content>
