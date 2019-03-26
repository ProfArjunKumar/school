<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Driver_Attendance.aspx.cs" Inherits="SchoolProject.Driver_Attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">DRIVER ATTENDANCE</div>
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
                      <asp:label runat="server" Text="Bus No"></asp:label>
                        <asp:DropDownList ID="DDbus" class="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DDbus_SelectedIndexChanged"></asp:DropDownList>
                    
                      </div>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="DDbus" ErrorMessage="Please Enter Field" InitialValue="-1"/>

                    </div>
                      <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label Text="Date"  runat="server" />
                            <asp:TextBox runat="server" ID="txtdate" class="form-control"/>
                            <%--<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="txtProweig" ErrorMessage="Please Enter Field" />--%>
                        </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Driver"></asp:label>
                        <asp:TextBox runat="server" ID="txtProseg" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="txtProseg" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Route"></asp:label>
                        <asp:TextBox runat="server" ID="txtFuel" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtFuel" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Status"></asp:label>
                        <asp:DropDownList ID="status" class="form-control" runat="server">
                            <%--<asp:ListItem Text="Select" />--%>
                            <asp:ListItem Text="Present" />
                             <asp:ListItem Text="Absent" />
                        </asp:DropDownList>
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
