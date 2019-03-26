<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="SchoolProject.Notification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header"> NOTIFICATION</div>
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
                      <asp:label runat="server" Text="Notification Id"></asp:label>
                        <asp:TextBox runat="server" ID="txtId" class="form-control"/>
                      </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="txtdate" class="form-control"/>
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Created By"></asp:label>
                        <asp:TextBox runat="server" ID="txtcreate" class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtcreate" ErrorMessage="Please Enter Field" />

                      </div>
                    </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text=" Title"></asp:label>
                        <asp:TextBox runat="server" ID="txttitle" class="form-control"/>
                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txttitle" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                 <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabelPron" Text=" Sent Date"></asp:label>
                      <asp:textbox  runat="server" class="form-control" TextMode="Date" id="txtsent"></asp:textbox>
                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtsent" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Subject Line"></asp:label>
                        <asp:TextBox runat="server" ID="txtsub" class="form-control"/>
                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtsub" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
              
                 <div class="col-md-6">
                    <div class="form-group">
                   <asp:label runat="server" ID="Avbstoc" Text=" Description"></asp:label>
                      <asp:textbox runat="server" class="form-control" id="txtdesc"></asp:textbox>
                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtdesc" ErrorMessage="Please Enter Field" />
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
</asp:Content>
