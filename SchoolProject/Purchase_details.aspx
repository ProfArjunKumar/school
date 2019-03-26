<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Purchase_details.aspx.cs" Inherits="SchoolProject.Purchase_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">PURCHASE DETAILS</div>
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
                      <asp:label runat="server" Text="Purchase Id"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox1" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Product Id"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox2" class="form-control"/>
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Vendor Id"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox3" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Product Name"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox4" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Product Quantity"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox5" class="form-control"/>
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Product Cost"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox6" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Purchase Date"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox7" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Product Tax"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox8" class="form-control"/>
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Product Total"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox9" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox10" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Username"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox11" class="form-control"/>
                    
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Academic Year"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox12" class="form-control"/>
                    
                      </div>
                    </div>

                 <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="form-control  col-sm-4" OnClick="Button_Click" Text="Submit" runat="server" />
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
</asp:Content>
