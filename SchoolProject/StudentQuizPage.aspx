<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentQuizPage.aspx.cs" Inherits="SchoolProject.StudentQuizPage" %>
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
       
                <div style="overflow:scroll">

                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Width="1223px">
                        <Columns>
                            <asp:BoundField DataField="QuizId" HeaderText="QuizId" SortExpression="QuizId" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="QName" HeaderText="QName" SortExpression="QName" />
                            <asp:BoundField DataField="No_ofSection" HeaderText="No_ofSection" SortExpression="No_ofSection" />
                            <asp:BoundField DataField="QuizType" HeaderText="QuizType" SortExpression="QuizType" />
                            <asp:BoundField DataField="No_ofClass" HeaderText="No_ofClass" SortExpression="No_ofClass" />
                            <asp:BoundField DataField="Winner" HeaderText="Winner" SortExpression="Winner" />
                            <asp:BoundField DataField="Runner" HeaderText="Runner" SortExpression="Runner" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [QuizId], [Date], [QName], [No_ofSection], [QuizType], [No_ofClass], [Winner], [Runner] FROM [Quiz]">
                    </asp:SqlDataSource>
   </div>
          </div>
        </div>
      </div>
    </section>
              </div>
            </div>
         </div>
</asp:Content>
