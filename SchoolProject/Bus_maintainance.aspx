<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Bus_maintainance.aspx.cs" Inherits="SchoolProject.Bus_maintainance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">BUS MAINTAINANCE </div>
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
                      <asp:label runat="server" Text="Bus ID"></asp:label>
                        <asp:TextBox runat="server" ID="txtId" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtId" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label Text="Date" runat="server" />
                            <asp:TextBox runat="server" ID="txtdate" class="form-control"/>
                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtdate" ErrorMessage="Please Enter Field" />
                        </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Route"></asp:label>
                        <asp:TextBox runat="server" ID="txtProseg" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtProseg" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Fuel Per Month"></asp:label>
                        <asp:TextBox runat="server" ID="txtFuel" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtFuel" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                   
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Pollution check"></asp:label>
                        <asp:TextBox runat="server" ID="txtProcode" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtProcode" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                 <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server"  Text="Expire Date"></asp:label>
                      <asp:textbox  runat="server" TextMode="Date" class="form-control" id="txtProdis"></asp:textbox>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="txtProdis" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label Text="Servicing"  runat="server" />
                            <asp:TextBox runat="server" ID="txtservi" class="form-control" />
                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="txtservi" ErrorMessage="Please Enter Field" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label Text="Expire Date" runat="server" />
                            <asp:TextBox runat="server" TextMode="Date" ID="txtexpiredate" class="form-control"/>
                             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="txtexpiredate" ErrorMessage="Please Enter Field" />
                        </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text=" Other Maintainance"></asp:label>
                        <asp:TextBox runat="server" ID="txtProweig" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="txtProweig" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
              
                 
                    
               <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" OnClick="Button_Click" class="gradient-button gradient-button-1" Text="Submit" runat="server" />
                    </div>
                  </div>
                </div>
              </fieldset>

            
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
