<%@ Page Title="" Language="C#" MasterPageFile="~/Accountant.Master" AutoEventWireup="true" CodeBehind="School_fee_entry.aspx.cs" Inherits="SchoolProject.School_fee_entry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">SCHOOL FEES ENTRY</div>
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
            <%--<form id="form" runat="server">--%>
              <!-- Step 1 -->
           
              <fieldset>
                <div class="row">
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="School Type"></asp:label>
                        <asp:DropDownList ID="dd"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="School Type" />
                                <asp:ListItem Text="International School" />
                                <asp:ListItem Text="Public School" />
                           </asp:DropDownList>
                      </div>
                        
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                        <asp:DropDownList ID="dd1"  CssClass="form-control" runat="server">
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
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Fee Type"></asp:label>
                        <asp:DropDownList ID="dd2"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Fee Type" />
                                <asp:ListItem Text="Admission Fee" />
                                <asp:ListItem Text="Tution Fee" />
                                <asp:ListItem Text="Transport Fee" />
                                <asp:ListItem Text="Maintaince Fee" />
                                <asp:ListItem Text="Hostel Fee" />
                                <asp:ListItem Text="Exam Fee" />
                           </asp:DropDownList>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox2" class="form-control"/>
                    
                      </div>
     
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Terms"></asp:label>
                        <asp:DropDownList ID="dd3"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Terms" />
                                <asp:ListItem Text="Advance" />
                                <asp:ListItem Text="1St Term" />
                                <asp:ListItem Text="2nd Term" />
                           </asp:DropDownList>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Fees"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox1" class="form-control"/>
                    
                      </div>
                    </div>
                 <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="form-control  col-sm-4" Text="Submit" runat="server" />
                    </div>
                  </div>
                </div>
              </fieldset>

            <%--</form>--%>
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
