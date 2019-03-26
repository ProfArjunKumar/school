<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Inventory_class.aspx.cs" Inherits="SchoolProject.Inventory_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">CLASS EQUIPMENT </div>
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
                            <asp:Label ID="labId" Text="Inventory Id" runat="server" />
                            <asp:TextBox runat="server" ID="TxtId" class="form-control"/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label Text="Date" runat="server" />
                            <asp:TextBox runat="server" ID="txtdate" class="form-control"/>
                        </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Chairs"></asp:label>
                        <asp:TextBox runat="server" ID="txtChairs" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label Text="Tables"  runat="server" />
                            <asp:TextBox runat="server" ID="txttables" class="form-control"/>
                        </div>
                    </div>
                    
                     
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Projectors"></asp:label>
                        <asp:TextBox runat="server" ID="txtProjectors" class="form-control"/>
                    </div>
                    </div>
                   <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Fans/Ac"></asp:label>
                        <asp:TextBox runat="server" ID="txtFans" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Lights "></asp:label>
                        <asp:TextBox runat="server" ID="txtLights" class="form-control"/>
                    </div>
                  </div>

                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="labtops" Text="Labtops/Tabs"></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="txtlabtops"></asp:textbox>
                    </div>
                  </div>

                     <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label Text="Dustbins" runat="server" />
                            <asp:TextBox runat="server" ID="txtdustbins" class="form-control"/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label Text="Racks"  runat="server" />
                            <asp:TextBox runat="server" ID="txtracks" class="form-control"/>
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
