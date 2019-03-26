<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="SchoolNonStaffAttendanceReport.aspx.cs" Inherits="SchoolProject.SchoolNonStaffAttendanceReport" %>
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
           <fieldset>
                   <div style="margin-left: 4px; margin-bottom: 45px; overflow: auto;">
              <asp:gridview ID="gridview1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" DataKeyNames="Id">
                  <Columns>
                      <%--<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />--%>
                      <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                      <asp:BoundField DataField="StaffId" HeaderText="StaffId" SortExpression="StaffId" />
                      <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                      <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                      <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                      <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                      <asp:BoundField DataField="InTime" HeaderText="InTime" SortExpression="InTime" />
                      <asp:BoundField DataField="OutTime" HeaderText="OutTime" SortExpression="OutTime" />
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
              </asp:gridview>

            
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" SelectCommand="SELECT * FROM [nonstaffattendence]" DeleteCommand="DELETE FROM [nonstaffattendence] WHERE [Id] = @Id" InsertCommand="INSERT INTO [nonstaffattendence] ([StaffId], [Date], [FullName], [Department], [Status], [InTime], [OutTime]) VALUES (@StaffId, @Date, @FullName, @Department, @Status, @InTime, @OutTime)" UpdateCommand="UPDATE [nonstaffattendence] SET [StaffId] = @StaffId, [Date] = @Date, [FullName] = @FullName, [Department] = @Department, [Status] = @Status, [InTime] = @InTime, [OutTime] = @OutTime WHERE [Id] = @Id">
                  <DeleteParameters>
                      <asp:Parameter Name="Id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="StaffId" Type="String" />
                      <asp:Parameter Name="Date" Type="String" />
                      <asp:Parameter Name="FullName" Type="String" />
                      <asp:Parameter Name="Department" Type="String" />
                      <asp:Parameter Name="Status" Type="String" />
                      <asp:Parameter Name="InTime" Type="String" />
                      <asp:Parameter Name="OutTime" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="StaffId" Type="String" />
                      <asp:Parameter Name="Date" Type="String" />
                      <asp:Parameter Name="FullName" Type="String" />
                      <asp:Parameter Name="Department" Type="String" />
                      <asp:Parameter Name="Status" Type="String" />
                      <asp:Parameter Name="InTime" Type="String" />
                      <asp:Parameter Name="OutTime" Type="String" />
                      <asp:Parameter Name="Id" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
                       </div>
            </fieldset>

            
          </div>
add
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
