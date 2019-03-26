<%@ Page Title="" Language="C#" MasterPageFile="~/Accountant.Master" AutoEventWireup="true" CodeBehind="AccountHolidayMaster.aspx.cs" Inherits="SchoolProject.AccountHolidayMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">HOLIDAY MASTER</div>
    </div>
</div>
<section id="icon-tabs">
  <div class="row">
    <div class="col-12">
      <div class="card">
       
                <div style="overflow:scroll">
                                    
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Width="1223px">
                        <Columns>
                            <asp:BoundField DataField="Occasion" HeaderText="Occasion" SortExpression="Occasion" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                            <asp:BoundField DataField="FromDate" HeaderText="FromDate" SortExpression="FromDate" />
                            <asp:BoundField DataField="ToDate" HeaderText="ToDate" SortExpression="ToDate" />
                            <asp:BoundField DataField="No_OfDays" HeaderText="No_OfDays" SortExpression="No_OfDays" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Occasion], [Date], [Day], [FromDate], [ToDate], [No_OfDays] FROM [Holidays1]">
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
