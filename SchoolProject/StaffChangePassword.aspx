<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="StaffChangePassword.aspx.cs" Inherits="SchoolProject.StaffChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <meta charset="utf-8"/>
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'/>
    <meta content="Fully Responsive Bootstrap 4 Admin Dashboard Template" name="description"/>
    <meta content="Spruko" name="author"/>

    <!-- Title -->
    <title>SWANK INNOVATION</title>

    <!-- Favicon -->
    <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png"/>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800" rel="stylesheet"/>

    <!-- Icons -->
    <link href="../assets/css/icons.css" rel="stylesheet"/>

    <!--Bootstrap.min css-->
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css"/>

    <!-- Adon CSS -->
    <link href="../assets/css/dashboard.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/css/hor-boxed.css" rel="stylesheet" type="text/css"/>

    <!-- Custom scroll bar css-->
    <link href="../assets/plugins/customscroll/jquery.mCustomScrollbar.css" rel="stylesheet" />

    <!-- Horizontal Css -->
    <link href="../assets/plugins/horizontal-menu/dropdown-effects/fade-down.css" rel="stylesheet"/>
    <link href="../assets/plugins/horizontal-menu/webslidemenu.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel"> 
        <div class="main-content">
            <div class="content-wrapper">
                <!-- Wizard Starts -->
              
                <div class="row">
                    <div class="col-sm-12">
                        <div class="content-header">Change Password</div>
                    </div>
                </div>
                <section id="icon-tabs">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                               
                                <div class="card-body">
                                    <div class="card-block">
                                         
                                            <!-- Step 1 -->

                                            <fieldset>
                                                <div class="row">
                                                      <div class="col-md-8">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="Label2" Text="Current Password"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtpwd1" TextMode="Password" class="form-control" />
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtpwd1" ErrorMessage="Please enter Current Password!" />

                                                        </div>
                                                        </div>
                                                    <div class="col-md-8">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="Labpassword" Text="New Password"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtpwd2" TextMode="Password" class="form-control" />
                                                            <asp:RequiredFieldValidator ID="passwordReq" runat="server" ControlToValidate="txtpwd2" SetFocusOnError="True" Display="Dynamic" />
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtpwd2" ErrorMessage="Please enter new Password!" />

                                                        </div>
                                                        </div>
                                                       <div class="col-md-8">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="Label3" Text="Confirm Password"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtpwd3" TextMode="Password" class="form-control" />
                                                            <asp:RequiredFieldValidator ID="confirmPasswordReq"   runat="server" ControlToValidate="txtpwd3"  SetFocusOnError="True"  Display="Dynamic" />
                                                                                                                                    
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtpwd3" ErrorMessage="Please enter Confirm Password!" />

                                                        </div>
                                                        </div>
                                                    <div class="col-md-8" style="margin-left:261px;">
                                                        <div class="form-group">
                                                            <asp:Button ID="SubmitButton" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="saveForm_Click" />
                                                        </div>
                                                    </div>
                                                    
                                                    </div>
                                                <asp:Label ID="Label1" runat="server" ></asp:Label>

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
