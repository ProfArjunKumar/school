<%@ Page Title="" Language="C#" MasterPageFile="~/Librarian.Master" AutoEventWireup="true" CodeBehind="LibraryAddBookPage.aspx.cs" Inherits="SchoolProject.LibraryAddBookPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">ADD BOOK</div>
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
                      <asp:label runat="server" Text="Book Id"></asp:label>
                        <asp:TextBox runat="server" ID="txtBook_Id" class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtBook_Id" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                      <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="txtDate" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtDate" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Book Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtBook_Name" class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtBook_Name" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabelPron" Text="Book Number"></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="txtBook_Number"></asp:textbox>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtBook_Number" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text=" Class"></asp:label>
                         <asp:DropDownList ID="DDClass"  CssClass="form-control" runat="server">
                             <asp:ListItem Text="Select Class" />
                                <asp:ListItem Text="NURSERY" />
                                <asp:ListItem Text="LKG" />
                                <asp:ListItem Text="UKG" />
                                <asp:ListItem Text="1" />
                                <asp:ListItem Text="2" />
                                <asp:ListItem Text="3" />
                                <asp:ListItem Text="4" />
                                <asp:ListItem Text="5" />
                                <asp:ListItem Text="6" />
                                <asp:ListItem Text="7" />
                                <asp:ListItem Text="8" />
                                <asp:ListItem Text="9" />
                                <asp:ListItem Text="10" />
                                
                           </asp:DropDownList>
                                               <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="DDClass" ErrorMessage="Please Enter Field" InitialValue="Select Class" />
                    </div>
                  </div>
                  
                 
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="Label1" Text="Total Copies"></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="txtCopies"></asp:textbox>
                                               <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtCopies" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="Label2" Text="Price"></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="txtprice"></asp:textbox>
                                               <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="txtprice" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="Label3" Text="Available Stock"></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="txtStock"></asp:textbox>
                                               <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="txtStock" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
               <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" OnClick="Button_Click"  class="gradient-button gradient-button-1" Text="Submit" runat="server" />
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
