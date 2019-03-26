<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Vendor_details.aspx.cs" Inherits="SchoolProject.Vendor_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">VENDER DETAILS</div>
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
                      <asp:label runat="server" Text="Vendor Id"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox1" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="VendorReg No"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox2" class="form-control"/>
                                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TextBox2" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Vendor Name"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox3" class="form-control"/>
                                               <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TextBox3" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Vendor Address"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox4" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TextBox4" ErrorMessage="Please Enter Field" />

                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Office Contact"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox5" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TextBox5" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Mobile No"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox6" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="TextBox6" ErrorMessage="Please Enter Field" />
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox7" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="TextBox7" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="User Name"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox8" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="TextBox8" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Academic Year"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox9" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="TextBox9" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                 <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" OnClick="Button_Click"  class="form-control  col-sm-8 gradient-button gradient-button-1" Text="Submit" runat="server" />
                    </div>
                  </div>
                </div>
              </fieldset>
               <asp:Label Text="" ID="message" runat="server" />
          

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
