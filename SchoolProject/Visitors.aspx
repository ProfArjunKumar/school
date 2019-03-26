<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Visitors.aspx.cs" Inherits="SchoolProject.Visitors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
   <div class="main-panel">
        <div class="main-content">
            <div class="content-wrapper">
                <!-- Wizard Starts -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="content-header">VISITORS</div>
                    </div>
                </div>
                <section id="icon-tabs">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <%--<div class="card-header">
          <h4 class="card-title">ADD PRODUCT</h4>
        </div>--%>
                                <div class="card-body">
                                    <div class="card-block">
                                       
                                        <!-- Step 1 -->

                                        <fieldset>
                                        <div class="row">
                                             <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server" Text="Visitor Id"></asp:Label>
                                                    <asp:TextBox runat="server" ID="TxtId" class="form-control" />
                                                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TxtId" ErrorMessage="Please Enter Field" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server" Text="Date"></asp:Label>
                                                    <asp:TextBox runat="server" ID="txtdate" class="form-control" TextMode="Time" />
                                                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtdate" ErrorMessage="Please Enter Field" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server" Text="First Name"></asp:Label>
                                                    <asp:TextBox runat="server" ID="txtfstname" class="form-control" />
                                                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtfstname" ErrorMessage="Please Enter Field" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server" Text="Last Name"></asp:Label>
                                                    <asp:TextBox runat="server" ID="txtlastname" class="form-control" />
                                                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtlastname" ErrorMessage="Please Enter Field" />

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server" Text="Reason"></asp:Label>
                                                    <asp:TextBox runat="server" ID="txtrsn" class="form-control" />
                                                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtrsn" ErrorMessage="Please Enter Field" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server" Text="Time Of Arriving"></asp:Label>
                                                    <asp:TextBox runat="server" ID="txttime" class="form-control" />
                                                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="txttime" ErrorMessage="Please Enter Field" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server" Text=" Contact Number"></asp:Label>
                                                    <asp:TextBox runat="server" ID="txtconum" class="form-control" />
                                                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="txtconum" ErrorMessage="Please Enter Field" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label runat="server" ID="LabelPron" Text="Address "></asp:Label>
                                                    <asp:TextBox runat="server" class="form-control" ID="txtadd"></asp:TextBox>
                                                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="txtadd" ErrorMessage="Please Enter Field" />
                                                </div>
                                            </div>
                                            <div class="col-md-8" style="margin-left:261px;">
                                                <div class="form-group">
                                                    <asp:Button ID="Button" align="center" OnClick="Button_Click" class="gradient-button gradient-button-1" Text="Submit" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                            </fieldset>
                                              <asp:Label Text="" ID="message" runat="server" />
                                       
                                            </div>


                                    </div>

                                </div>
                            </div>
                        </div>

                    
                   
                </section>
                <!-- Wizard Ends -->
            </div>
        </div>

    </div>
    
   <link href="https://code.jquery.com/ui/1.12.0/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
   
    <script>
        $(document).ready(function () {
            $("#txtDate").val($.datepicker.formatDate("mm/dd/yy", new Date()));
        });
    </script>
</asp:Content>
