<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="StaffaddStudentattendance.aspx.cs" Inherits="SchoolProject.StaffaddStudentattendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">STUDENT ATTENDANCE</div>
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
                <div class="row">
                  <div class="col-md-3">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server"   ID="TxtDate" class="form-control"/>
                       <%--<asp:label runat="server" Text="Username"></asp:label>--%>
                       <%--<asp:TextBox runat="server" ID="TextBox1" class="form-control"/>--%>
                      </div>
                  </div>                    
                    <div class="col-sm-6" style="margin-left: 300px">
                        <div class="form-group">
                            <asp:Button ID="btnadd" Text="Add" CssClass="btn btn-success col-sm-4" runat="server" OnClick="btnadd_Click" />
                        </div>
                    </div>
                </div>
              </fieldset>
              <br />     
              <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server"  BackColor="White" OnRowDataBound="GridView1_RowDataBound" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                     <Columns>
                        <%--<asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="30" >
                        <ItemStyle Width="30px"></ItemStyle>
                        </asp:BoundField>--%>
                        <asp:BoundField DataField="StudentId" HeaderText="StudentId" ItemStyle-Width="150" >
                        <ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="StudentName" HeaderText="StudentName" ItemStyle-Width="150" >
                        <ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Class" HeaderText="Class" ItemStyle-Width="150" >
                         <ItemStyle Width="150px"></ItemStyle>
                         </asp:BoundField>
                         <asp:BoundField DataField="Section" HeaderText="Section" ItemStyle-Width="150" >
                         <ItemStyle Width="150px"></ItemStyle>
                         </asp:BoundField>
                         <asp:TemplateField HeaderText="Today Date">
                             <ItemTemplate>
                             <asp:Label ID="Label1" runat="server" ></asp:Label>
                                 </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Status">
                           <ItemTemplate>
                               <asp:DropDownList ID="DropDownList1" runat="server">
                                   <asp:ListItem Text="Select" />
                                   <asp:ListItem Text="Present" />
                                   <asp:ListItem Text="Absent" />
                                   <asp:ListItem Text="Leave" />
                                   <asp:ListItem Text="Holiday" />
                               </asp:DropDownList>
                           </ItemTemplate>
                        </asp:TemplateField>
                           <asp:BoundField DataField="Username" HeaderText="Username" ItemStyle-Width="150" >
                         <ItemStyle Width="150px"></ItemStyle>
                               </asp:BoundField>
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
              <br />                
              <div class="col-md-8" style="margin-left:261px;width: 107px;height: 40px;">
                    <div class="form-group">
              <asp:Button ID="Button1" Style="color:#ffffff;" align="center" class="gradient button gradient-button-1" Text="Submit" runat="server" OnClick="Button1_Click" />
                    </div>
                  </div>
            <br />
              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" DataKeyNames="Id">
                  <Columns>
                      <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                      <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                      <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                      <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                      <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                      <asp:BoundField DataField="TodayDate" HeaderText="TodayDate" SortExpression="TodayDate" />
                      <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                      <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
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
              </asp:GridView>

              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" SelectCommand="SELECT * FROM [StudAttendance_tbl]" DeleteCommand="DELETE FROM [StudAttendance_tbl] WHERE [Id] = @Id" InsertCommand="INSERT INTO [StudAttendance_tbl] ([StudentId], [StudentName], [Class], [Section], [TodayDate], [Status], [Username]) VALUES (@StudentId, @StudentName, @Class, @Section, @TodayDate, @Status, @Username)" UpdateCommand="UPDATE [StudAttendance_tbl] SET [StudentId] = @StudentId, [StudentName] = @StudentName, [Class] = @Class, [Section] = @Section, [TodayDate] = @TodayDate, [Status] = @Status, [Username] = @Username WHERE [Id] = @Id">
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
                      <asp:Parameter Name="Username" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="StudentId" Type="String" />
                      <asp:Parameter Name="StudentName" Type="String" />
                      <asp:Parameter Name="Class" Type="String" />
                      <asp:Parameter Name="Section" Type="String" />
                      <asp:Parameter Name="TodayDate" Type="String" />
                      <asp:Parameter Name="Status" Type="String" />
                      <asp:Parameter Name="Username" Type="String" />
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
