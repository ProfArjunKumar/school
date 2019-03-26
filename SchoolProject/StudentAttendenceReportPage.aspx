<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentAttendenceReportPage.aspx.cs" Inherits="SchoolProject.StudentAttendenceReportPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
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
                <%--<fieldset>
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
           
              <asp:gridview ID="gridview1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                  <Columns>
                      <%--<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />--%>
                      <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                      <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                      <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                      <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                      <asp:BoundField DataField="TodayDate" HeaderText="TodayDate" SortExpression="TodayDate" />
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

            
           

            

            
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" SelectCommand="SELECT [StudentId], [StudentName], [Class], [Section], [TodayDate], [Status] FROM [StudAttendance_tbl] WHERE ([Username] = @Username)">
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
