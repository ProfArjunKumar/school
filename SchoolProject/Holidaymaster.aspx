<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Holidaymaster.aspx.cs" Inherits="SchoolProject.Holidaymaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header"> HOLIDAYS </div>
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
                      <asp:label runat="server" Text="Holiday Id"></asp:label>
                        <asp:TextBox runat="server" ID="txtId" class="form-control"/>
                      
                      </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date "></asp:label>
                        <asp:TextBox runat="server" ID="txtDate" class="form-control"/>
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Day "></asp:label>
                      <asp:DropDownList ID="ddl" class="form-control" runat="server">
                          <asp:ListItem Text="Select" />
                          <asp:ListItem Text="Monday" />
                          <asp:ListItem Text="Tuesday" />
                          <asp:ListItem Text="Wednesday" />
                          <asp:ListItem Text="Thursday" />
                          <asp:ListItem Text="Friday" />
                          <asp:ListItem Text="Saturday" />
                          <asp:ListItem Text="Sunday" />
                      </asp:DropDownList>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="ddl" ErrorMessage="Please Enter Field" InitialValue="Select" />
                       
                      </div>
                    </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Occasion  "></asp:label>
                        <%--<asp:TextBox runat="server" ID="txtOccasion" class="form-control"/>--%>
                        <asp:DropDownList ID="dd2" class="form-control" runat="server">
                            <asp:ListItem Text="Select" />
                            <asp:ListItem Text="New Year" />
                            <asp:ListItem Text="Sankranthi" />
                            <asp:ListItem Text="Republic Day" />
                            <asp:ListItem Text="Holi" />
                            <asp:ListItem Text="Summer Holiday's" />
                            <asp:ListItem Text="Independence Day" />
                            <asp:ListItem Text="Bakrid" />
                            <asp:ListItem Text="Ganesh Chaturthi" />
                            <asp:ListItem Text="Ramzan" />
                            <asp:ListItem Text="School Annual Day" />
                            <asp:ListItem Text="Mahatma Gandhi Jayanti" />
                            <asp:ListItem Text="Dussehra" />
                            <asp:ListItem Text="Diwali" />
                            <asp:ListItem Text="Christmas Day" />
                            <asp:ListItem Text="Teachers Day" />
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="dd2" ErrorMessage="Please Enter Field" InitialValue="Select" />
                    </div>
                  </div>

                 <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="boxx" Text=" No Of Days"></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="txtNodays"></asp:textbox>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtNodays" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                   <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="From Date  "></asp:label>
                        <asp:TextBox runat="server" ID="txtFdate" TextMode="Date" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtFdate" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="To Date  "></asp:label>
                        <asp:TextBox runat="server" ID="txtTdate" TextMode="Date" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtTdate" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    
               <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" Style="color:#ffffff;" class="form-control  col-sm-8 gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button_Click"/>
                    </div>
                  </div>
                </div>
              </fieldset>
              <br />
               <div style="overflow:scroll">
                   <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" DataKeyNames="HolidayId" DataSourceID="SqlDataSource1" style="z-index: 1">
                       <Columns>
                           <asp:BoundField DataField="HolidayId" HeaderText="HolidayId" InsertVisible="False" ReadOnly="True" SortExpression="HolidayId" />
                           <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                           <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                           <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                           <asp:BoundField DataField="Occasion" HeaderText="Occasion" SortExpression="Occasion" />
                           <asp:BoundField DataField="NoOfDays" HeaderText="NoOfDays" SortExpression="NoOfDays" />
                           <asp:BoundField DataField="ToDate" HeaderText="ToDate" SortExpression="ToDate" />
                           <asp:BoundField DataField="FromDate" HeaderText="FromDate" SortExpression="FromDate" />
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" DeleteCommand="DELETE FROM [holidays] WHERE [HolidayId] = @original_HolidayId" InsertCommand="INSERT INTO [holidays] ([Id], [Date], [Day], [Occasion], [NoOfDays], [ToDate], [FromDate]) VALUES (@Id, @Date, @Day, @Occasion, @NoOfDays, @ToDate, @FromDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [holidays]" UpdateCommand="UPDATE [holidays] SET [Id] = @Id, [Date] = @Date, [Day] = @Day, [Occasion] = @Occasion, [NoOfDays] = @NoOfDays, [ToDate] = @ToDate, [FromDate] = @FromDate WHERE [HolidayId] = @original_HolidayId">
                       <DeleteParameters>
                           <asp:Parameter Name="original_HolidayId" Type="Int32" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="Id" Type="String" />
                           <asp:Parameter Name="Date" Type="String" />
                           <asp:Parameter Name="Day" Type="String" />
                           <asp:Parameter Name="Occasion" Type="String" />
                           <asp:Parameter Name="NoOfDays" Type="String" />
                           <asp:Parameter Name="ToDate" Type="String" />
                           <asp:Parameter Name="FromDate" Type="String" />
                       </InsertParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="Id" Type="String" />
                           <asp:Parameter Name="Date" Type="String" />
                           <asp:Parameter Name="Day" Type="String" />
                           <asp:Parameter Name="Occasion" Type="String" />
                           <asp:Parameter Name="NoOfDays" Type="String" />
                           <asp:Parameter Name="ToDate" Type="String" />
                           <asp:Parameter Name="FromDate" Type="String" />
                           <asp:Parameter Name="original_HolidayId" Type="Int32" />
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
</asp:Content>
