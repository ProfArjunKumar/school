<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="SportsReg.aspx.cs" Inherits="SchoolProject.SportsReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">SPORTS</div>
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
                      <asp:label runat="server" ID="LabId" Text="Sports Id"></asp:label>
                        <asp:TextBox runat="server" ID="TxtId" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="TxtId" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                       <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDate" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="TxtDate" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TxtDate" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabStudName" Text="Stadium Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtStudName" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TxtStudName" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="AcdYear" Text="Acadamic Year"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAcdYear" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TxtAcdYear" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                      <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabStdId" Text="StdId"></asp:label>
                        <asp:TextBox runat="server" ID="TxtStdId" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TxtStdId" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabName" Text="Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtName" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TxtName" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                 <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabelClass" Text="Class "></asp:label>
                      <asp:DropDownList ID="Class"  CssClass="form-control" runat="server">
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
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="Class" ErrorMessage="Please Enter Field" InitialValue="Select Class" />
                    </div>
                  </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabelSection" Text="Section "></asp:label>
                       <asp:DropDownList ID="Section"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Section" />
                                <asp:ListItem Text="A" />
                                <asp:ListItem Text="B" />
                                <asp:ListItem Text="C" />
                                <asp:ListItem Text="D" />
                                <asp:ListItem Text="E" />
                           </asp:DropDownList>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="Section" ErrorMessage="Please Enter Field" InitialValue="Select Section" />
                    </div>
                  </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabelGame" Text="Game "></asp:label>
                      <asp:textbox  runat="server" class="form-control" ID="TxtGame"></asp:textbox>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="TxtGame" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabPayRoll" Text="PlayerRoll "></asp:label>
                        <asp:TextBox runat="server" ID="TxtPayRoll" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="TxtPayRoll" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
               <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button_Click" />
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
