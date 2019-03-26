<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="SchoolNonStaffAddAttendance.aspx.cs" Inherits="SchoolProject.SchoolNonStaffAddAttendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                      <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">STAFF ATTENDANCE</div>
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
                    
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabStaffId" Text="Staff Id"></asp:label>
                      <%-- <asp:DropDownList ID="TxtStaffId" AutoPostBack="true" class="form-control" OnSelectedIndexChanged="TxtStaffId_SelectedIndexChanged" runat="server">
                         
                      </asp:DropDownList>--%>
                     <%--   <asp:TextBox runat="server" ID="TxtStaffId" class="form-control"/>
                      <div class="form-group">
                        <asp:Button ID="Button1" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button1_Click"/>
                    </div>--%>
                       <asp:DropDownList ID="DDstudent" AutoPostBack="true" class="form-control" OnSelectedIndexChanged="TxtStaffId_SelectedIndexChanged" runat="server">
                           </asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="DDstudent" ErrorMessage="Please select Field" InitialValue="-1" />

                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDate" Text="Date "></asp:label>
                        <asp:TextBox runat="server" ID="TxtDate" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabName" Text="Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtName" class="form-control"/>
                      </div>
                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TxtName" ErrorMessage="Please Enter Field" />
                    </div>
                   
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDept" Text="Department "></asp:label>
                        <asp:TextBox runat="server" ID="TxtDept" class="form-control"/>
                      <asp:TextBox runat="server" ID="TextBox1" class="form-control"/>
                      </div>
                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="Please Enter Field" />
                    </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabStatus" Text="Status"></asp:label>
                        <asp:DropDownList ID="Status" class="form-control" runat="server">
                         <%--   <asp:ListItem Text="Select" />--%>
                            <asp:ListItem Text="Present" />
                             <asp:ListItem Text="Absent" />
                        </asp:DropDownList>
                    </div>
                  </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabInTime" Text="In-time"></asp:label>
                        <asp:TextBox runat="server" ID="TxtInTime" class="form-control"/>
                         <asp:label runat="server" ID="LabOutTime" Text="Out-time"></asp:label>
                       <asp:TextBox runat="server" ID="TxtOutTime" class="form-control"/>
                    </div>
                  </div>
                    <%-- <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabOutTime" Text="Out-time"></asp:label>
                        <asp:TextBox runat="server" ID="TxtOutTime" class="form-control"/>
                    </div>--%>
                  </div>
               <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="SubmitButton" align="center" class="gradient-button gradient-button-1" Text="InTime" runat="server" OnClick="SubmitButton_Click" />
                    <asp:Button ID="txtout" align="center" class="gradient-button gradient-button-1" Text="OutTime" runat="server" OnClick="txtout_Click" />
                    </div>
                  </div>
                
                   <%--<div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="txtin" align="center" class="gradient-button gradient-button-1" Text="InTime" runat="server" OnClick="txtin_Click" />
                    </div>
                  </div>--%>
            <%--   
             <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="txtout" align="center" class="gradient-button gradient-button-1" Text="OutTime" runat="server" OnClick="txtout_Click" />
                    </div>
                  </div>--%>
                
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
