<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentExamSchedulePage.aspx.cs" Inherits="SchoolProject.StudentExamSchedulePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">EXAM SCHEDULE </div>
    </div>
</div>
<section id="icon-tabs">
  <div class="row">
    <div class="col-12">
      <div class="card">
       
                <div style="overflow:scroll">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Width="1223px">
                        <Columns>
                            <asp:BoundField DataField="ExamId" HeaderText="ExamId" SortExpression="ExamId" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Exam_Name" HeaderText="Exam_Name" SortExpression="Exam_Name" />
                            <asp:BoundField DataField="Cls" HeaderText="Cls" SortExpression="Cls" />
                            <asp:BoundField DataField="FromDate" HeaderText="FromDate" SortExpression="FromDate" />
                            <asp:BoundField DataField="Shift" HeaderText="Shift" SortExpression="Shift" />
                            <asp:BoundField DataField="Subjectname1" HeaderText="Subjectname1" SortExpression="Subjectname1" />
                            <asp:BoundField DataField="Cutoffmarks" HeaderText="Cutoffmarks" SortExpression="Cutoffmarks" />
                            <asp:BoundField DataField="Starttime" HeaderText="Starttime" SortExpression="Starttime" />
                            <asp:BoundField DataField="Endtime" HeaderText="Endtime" SortExpression="Endtime" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ExamId], [Date], [Exam_Name], [Cls], [FromDate], [Shift], [Subjectname1], [Cutoffmarks], [Starttime], [Endtime] FROM [ExamSchedule_tbl]">
                    </asp:SqlDataSource>
                </div>
           
          </div>

        </div>
      </div>

   
</section>
              </div>
            </div>
        </div>
<!-- Wizard Ends -->
          
   <link href="https://code.jquery.com/ui/1.12.0/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <script>
        $(document).ready(function () {
            $("#txtDate").val($.datepicker.formatDate("mm/dd/yy", new Date()));
        });
    </script>
</asp:Content>
