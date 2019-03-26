<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Academic_info.aspx.cs" Inherits="SchoolProject.Academic_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">ACADEMIC INFO</div>
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
            
              <!-- Step 1 -->
           
              <fieldset>
                <div class="row">
                  <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Id"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox1" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDate" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox6" class="form-control"/>
                      </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                        <asp:DropDownList ID="dd"  CssClass="form-control" runat="server">
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
                      <asp:label runat="server" Text="Year of Passing"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox2" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Result"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox3" class="form-control"/>
                    
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Percentage"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox4" class="form-control"/>
                    
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Board/University"></asp:label>
                        <asp:TextBox runat="server" ID="TextBox5" class="form-control"/>
                    
                      </div>
                    </div>
                    <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button_Click" />
                    </div>
                  </div>
                </div>
              </fieldset>
                 <div style="overflow:scroll">
                     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1">
                         <Columns>
                             <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                             <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                             <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                             <asp:BoundField DataField="YearofPassing" HeaderText="YearofPassing" SortExpression="YearofPassing" />
                             <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result" />
                             <asp:BoundField DataField="Percentage" HeaderText="Percentage" SortExpression="Percentage" />
                             <asp:BoundField DataField="Board" HeaderText="Board" SortExpression="Board" />
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
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [Academic_info] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Academic_info] ([Id], [Date], [ClassName], [YearofPassing], [Result], [Percentage], [Board]) VALUES (@Id, @Date, @ClassName, @YearofPassing, @Result, @Percentage, @Board)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Academic_info]" UpdateCommand="UPDATE [Academic_info] SET [Date] = @Date, [ClassName] = @ClassName, [YearofPassing] = @YearofPassing, [Result] = @Result, [Percentage] = @Percentage, [Board] = @Board WHERE [Id] = @original_Id">
                         <DeleteParameters>
                             <asp:Parameter Name="original_Id" Type="String" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="Id" Type="String" />
                             <asp:Parameter Name="Date" Type="String" />
                             <asp:Parameter Name="ClassName" Type="String" />
                             <asp:Parameter Name="YearofPassing" Type="String" />
                             <asp:Parameter Name="Result" Type="String" />
                             <asp:Parameter Name="Percentage" Type="String" />
                             <asp:Parameter Name="Board" Type="String" />
                         </InsertParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="Date" Type="String" />
                             <asp:Parameter Name="ClassName" Type="String" />
                             <asp:Parameter Name="YearofPassing" Type="String" />
                             <asp:Parameter Name="Result" Type="String" />
                             <asp:Parameter Name="Percentage" Type="String" />
                             <asp:Parameter Name="Board" Type="String" />
                             <asp:Parameter Name="original_Id" Type="String" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                 </div>
            
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
