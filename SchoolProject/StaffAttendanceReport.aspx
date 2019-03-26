﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="StaffAttendanceReport.aspx.cs" Inherits="SchoolProject.StaffAttendanceReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">STAFF ATTENDANCE REPORT</div>
    </div>
</div>
<section id="icon-tabs">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-body">
          <div class="card-block">
            
              <!-- Step 1 -->
              <%-- <fieldset>
                <div class="row">
                    
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDate" Text="Date"></asp:label>
                    
                        <asp:TextBox runat="server" ID="TxtDate" class="form-control"/>
                      <div class="form-group">
                        <asp:Button ID="Button1" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button1_Click"/>
                    </div>
                      </div>
                    </div>
                    </div>
                    </fieldset>--%>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                  <Columns>
                      <asp:BoundField DataField="StaffId" HeaderText="StaffId" SortExpression="StaffId" />
                      <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                      <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                      <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                      <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                      <asp:BoundField DataField="InTime" HeaderText="InTime" SortExpression="InTime" />
                      <asp:BoundField DataField="OutTime" HeaderText="OutTime" SortExpression="OutTime" />
                  </Columns>
                  <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                         <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                         <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                         <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                         <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#594B9C" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#33276A" />
              </asp:GridView>
              
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" SelectCommand="SELECT [StaffId], [FullName], [Date], [Department], [Status], [InTime], [OutTime] FROM [StaffAttendance] WHERE ([Username] = @Username)">
                  <SelectParameters>
                      <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
              
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
