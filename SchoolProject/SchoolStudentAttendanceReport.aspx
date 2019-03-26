<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="SchoolStudentAttendanceReport.aspx.cs" Inherits="SchoolProject.SchoolStudentAttendanceReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -webkit-box-flex: 0;
            -webkit-flex: 0 0 100%;
            -moz-box-flex: 0;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: -15px;
            top: -29px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="auto-style1">
        <div class="content-header">STUDENT ATTENDANCE REPORT</div>
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
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                      <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                      <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                      <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                      <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                      <asp:BoundField DataField="TodayDate" HeaderText="TodayDate" SortExpression="TodayDate" />
                      <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                  </Columns>
                  <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                  <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                  <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                  <RowStyle BackColor="White" ForeColor="#003399" />
                  <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                  <SortedAscendingCellStyle BackColor="#EDF6F6" />
                  <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                  <SortedDescendingCellStyle BackColor="#D6DFDF" />
                  <SortedDescendingHeaderStyle BackColor="#002876" />
              </asp:gridview>

            
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" SelectCommand="SELECT * FROM [StudAttendance_tbl]" DeleteCommand="DELETE FROM [StudAttendance_tbl] WHERE [Id] = @Id" InsertCommand="INSERT INTO [StudAttendance_tbl] ([StudentId], [StudentName], [Class], [Section], [TodayDate], [Status]) VALUES (@StudentId, @StudentName, @Class, @Section, @TodayDate, @Status)" UpdateCommand="UPDATE [StudAttendance_tbl] SET [StudentId] = @StudentId, [StudentName] = @StudentName, [Class] = @Class, [Section] = @Section, [TodayDate] = @TodayDate, [Status] = @Status WHERE [Id] = @Id">
                  <DeleteParameters>
                      <asp:Parameter Name="Id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="StudentId" Type="String" />
                      <asp:Parameter Name="StudentName" Type="String" />
                      <asp:Parameter Name="Class" Type="String" />
                      <asp:Parameter Name="Section" Type="String" />
                      <asp:Parameter Name="TodayDate" Type="String" />
                      <asp:Parameter Name="Status" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="StudentId" Type="String" />
                      <asp:Parameter Name="StudentName" Type="String" />
                      <asp:Parameter Name="Class" Type="String" />
                      <asp:Parameter Name="Section" Type="String" />
                      <asp:Parameter Name="TodayDate" Type="String" />
                      <asp:Parameter Name="Status" Type="String" />
                      <asp:Parameter Name="Id" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
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
