<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="SchoolDriverAttendanceReport.aspx.cs" Inherits="SchoolProject.SchoolDriverAttendanceReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">DRIVER ATTENDANCE REPORT</div>
    </div>
</div>
<section id="icon-tabs">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-body">
          <div class="card-block">
            
              <!-- Step 1 -->
           
              <asp:gridview ID="gridview1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" DataKeyNames="Id">
                  <Columns>
                      <%--<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />--%>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                      <asp:BoundField DataField="Busid" HeaderText="Busid" SortExpression="Busid" />
                      <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                      <asp:BoundField DataField="Driver" HeaderText="Driver" SortExpression="Driver" />
                      <asp:BoundField DataField="Route" HeaderText="Route" SortExpression="Route" />
                      <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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

            
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" SelectCommand="SELECT * FROM [Driver_attendance]" DeleteCommand="DELETE FROM [Driver_attendance] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Driver_attendance] ([Busid], [Date], [Driver], [Route], [Status]) VALUES (@Busid, @Date, @Driver, @Route, @Status)" UpdateCommand="UPDATE [Driver_attendance] SET [Busid] = @Busid, [Date] = @Date, [Driver] = @Driver, [Route] = @Route, [Status] = @Status WHERE [Id] = @Id">
                  <DeleteParameters>
                      <asp:Parameter Name="Id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="Busid" Type="String" />
                      <asp:Parameter Name="Date" Type="String" />
                      <asp:Parameter Name="Driver" Type="String" />
                      <asp:Parameter Name="Route" Type="String" />
                      <asp:Parameter Name="Status" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="Busid" Type="String" />
                      <asp:Parameter Name="Date" Type="String" />
                      <asp:Parameter Name="Driver" Type="String" />
                      <asp:Parameter Name="Route" Type="String" />
                      <asp:Parameter Name="Status" Type="String" />
                      <asp:Parameter Name="Id" Type="Int32" />
                  </UpdateParameters>
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
