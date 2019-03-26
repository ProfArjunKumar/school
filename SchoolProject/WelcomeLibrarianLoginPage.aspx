<%@ Page Title="" Language="C#" MasterPageFile="~/WelcomeMaster.Master" AutoEventWireup="true" CodeBehind="WelcomeLibrarianLoginPage.aspx.cs" Inherits="SchoolProject.WelcomeLibrarianLoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel"> 
        <div class="main-content">
            <div class="content-wrapper">
                <!-- Wizard Starts -->
              
                <div class="row">
                    <div class="col-sm-12">
                        <div class="content-header">LIBRARIAN LOGIN</div>
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
                                                            <asp:Label runat="server" ID="Labname" Text="Username"></asp:Label>
                                                            <asp:TextBox runat="server" ID="name" class="form-control" />
                                                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="name" ErrorMessage="Please enter Current Username!" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="Labpassword" Text="Password"></asp:Label>
                                                            <asp:TextBox runat="server" ID="password" TextMode="Password" class="form-control" />
                                                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="password" ErrorMessage="Please enter Current Password!" />
                                                        </div>
                                                        </div>
                                                    <div class="col-md-8" style="margin-left:261px;">
                                                        <div class="form-group">
                                                            <asp:Button ID="SubmitButton" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="saveForm_Click" />
                                                        </div>
                                                    </div>
                                                    
                                                    </div>
                                                <asp:Label ID="message" runat="server" style="color:Red"/>

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
