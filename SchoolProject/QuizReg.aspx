<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="QuizReg.aspx.cs" Inherits="SchoolProject.QuizReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">QUIZ </div>
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
                      <asp:label runat="server" ID="LabQuizId" Text="Quiz Id"></asp:label>
                        <asp:TextBox runat="server" ID="TxtQId" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="TxtQId" ErrorMessage="Please Enter Field" />
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
                      <asp:label runat="server" ID="LabQuizName" Text="Quiz Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtQName" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TxtQName" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabClass" Text="No.of Class"></asp:label>
                        <asp:TextBox runat="server" ID="TxtClass" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TxtClass" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabSection" Text="No.of Section"></asp:label>
                        <asp:TextBox runat="server" ID="TxtSection" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TxtSection" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                 <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabQuizType" Text=" Quiz Type"></asp:label>
                      <asp:textbox  runat="server" class="form-control" ID="TxtQType"></asp:textbox>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TxtQType" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabWinner" Text=" Winner"></asp:label>
                        <asp:TextBox runat="server" ID="TxtWinner" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="TxtWinner" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
              
                 <div class="col-md-6">
                    <div class="form-group">
                   <asp:label runat="server" ID="LabRunner" Text=" Runner"></asp:label>
                      <asp:textbox runat="server" class="form-control" ID="TxtRunner"></asp:textbox>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="TxtRunner" ErrorMessage="Please Enter Field" />
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
