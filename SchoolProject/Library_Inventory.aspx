<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Library_Inventory.aspx.cs" Inherits="SchoolProject.Library_Inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">LIBRARY EQUIPMENT </div>
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
                      <asp:label runat="server" ID="labId" Text="Library Id"></asp:label>
                        <asp:TextBox runat="server" ID="TxtId" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDate" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="TxtDate" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDesktops" Text="Desktops"></asp:label>
                        <asp:TextBox runat="server" ID="TxtDesktops" class="form-control"/>
                      </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabRacks" Text="Racks"></asp:label>
                        <asp:TextBox runat="server" ID="TxtRacks" class="form-control"/>
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabTrolleys" Text="Trolleys"></asp:label>
                        <asp:TextBox runat="server" ID="TxtTrolleys" class="form-control"/>
                      </div>
                    </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabChairs" Text="Chairs "></asp:label>
                        <asp:TextBox runat="server" ID="TxtChairs" class="form-control"/>
                    </div>
                  </div>
                 <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabTables" Text="Tables "></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="TxtTables"></asp:textbox>
                    </div>
                  </div>
                   <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabFans" Text="Fans/ACs "></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="TxtFans"></asp:textbox>
                    </div>
                  </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabLights" Text="Lights "></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="TxtLights"></asp:textbox>
                    </div>
                  </div>
               <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="gradient-button gradient-button-1" Text="Submit" OnClick="Button_Click" runat="server" />
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
