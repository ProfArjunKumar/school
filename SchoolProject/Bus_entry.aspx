<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Bus_entry.aspx.cs" Inherits="SchoolProject.Bus_entry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">BUS ENTRY</div>
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
                      <asp:label runat="server" Text="Bus Id"></asp:label>
                        <asp:TextBox runat="server" ID="txtId" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="txtId" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                      <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text=" Date"></asp:label>
                        <asp:TextBox runat="server" ID="txtdate" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtdate" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                      <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Bus No"></asp:label>
                        <asp:TextBox runat="server" ID="txtbusno" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtbusno" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Type"></asp:label>
                      <asp:DropDownList ID="ddtype" class="form-control" runat="server">
                          <asp:ListItem Text="Select" />
                          <asp:ListItem Text="Own" />
                          <asp:ListItem Text="Rent" />

                      </asp:DropDownList>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="ddtype" ErrorMessage="Please Enter Field" InitialValue="Select" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Out-Time"></asp:label>
                        <asp:TextBox runat="server" ID="txtout" class="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtout" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="IN-Time"></asp:label>
                        <asp:TextBox runat="server" ID="txtIn" class="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtIn" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="From"></asp:label>
                        <asp:TextBox runat="server" ID="txtfrom" class="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="txtfrom" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="To"></asp:label>
                        <asp:TextBox runat="server" ID="txtto" class="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="txtto" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Occupancy"></asp:label>
                        <asp:TextBox runat="server" ID="txtoccp" class="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="txtoccp" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Driver Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtdname" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="txtdname" ErrorMessage="Please Enter Field" />
                        </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Address "></asp:label>
                        <asp:TextBox runat="server" ID="txtaddr" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" ForeColor="Red" ControlToValidate="txtaddr" ErrorMessage="Please Enter Field" />
                        </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="License No "></asp:label>
                        <asp:TextBox runat="server" ID="txtlno" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" ForeColor="Red" ControlToValidate="txtlno" ErrorMessage="Please Enter Field" />
                        </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Phone No"></asp:label>
                        <asp:TextBox runat="server" ID="txtphn" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13" ForeColor="Red" ControlToValidate="txtphn" ErrorMessage="Please Enter Field" />
                        </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Alternate No"></asp:label>
                        <asp:TextBox runat="server" ID="txtaltr" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator14" ForeColor="Red" ControlToValidate="txtaltr" ErrorMessage="Please Enter Field" />
                        </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Supporter Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtsprt" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator15" ForeColor="Red" ControlToValidate="txtsprt" ErrorMessage="Please Enter Field" />
                        </div>
                    </div>
                  <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Supporter Phone No"></asp:label>
                        <asp:TextBox runat="server" ID="txtsptno" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator16" ForeColor="Red" ControlToValidate="txtsptno" ErrorMessage="Please Enter Field" />
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
                   
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                  <Columns>
                      <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                      <asp:BoundField DataField="BusId" HeaderText="BusId" SortExpression="BusId" />
                      <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                      <asp:BoundField DataField="Bus_No" HeaderText="Bus_No" SortExpression="Bus_No" />
                      <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                      <asp:BoundField DataField="OutTime" HeaderText="OutTime" SortExpression="OutTime" />
                      <asp:BoundField DataField="InTime" HeaderText="InTime" SortExpression="InTime" />
                      <asp:BoundField DataField="FromLoc" HeaderText="FromLoc" SortExpression="FromLoc" />
                      <asp:BoundField DataField="ToLoc" HeaderText="ToLoc" SortExpression="ToLoc" />
                      <asp:BoundField DataField="Occupancy" HeaderText="Occupancy" SortExpression="Occupancy" />
                      <asp:BoundField DataField="Driver_Name" HeaderText="Driver_Name" SortExpression="Driver_Name" />
                      <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                      <asp:BoundField DataField="Driver_License" HeaderText="Driver_License" SortExpression="Driver_License" />
                      <asp:BoundField DataField="DContact_No" HeaderText="DContact_No" SortExpression="DContact_No" />
                      <asp:BoundField DataField="AlternateNo" HeaderText="AlternateNo" SortExpression="AlternateNo" />
                      <asp:BoundField DataField="Supporter_Name" HeaderText="Supporter_Name" SortExpression="Supporter_Name" />
                      <asp:BoundField DataField="Supporter_ContactNo" HeaderText="Supporter_ContactNo" SortExpression="Supporter_ContactNo" />
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
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" DeleteCommand="DELETE FROM [BusEntry] WHERE [Id] = @Id" InsertCommand="INSERT INTO [BusEntry] ([BusId], [Date], [Bus_No], [Type], [OutTime], [InTime], [FromLoc], [ToLoc], [Occupancy], [Driver_Name], [Address], [Driver_License], [DContact_No], [AlternateNo], [Supporter_Name], [Supporter_ContactNo]) VALUES (@BusId, @Date, @Bus_No, @Type, @OutTime, @InTime, @FromLoc, @ToLoc, @Occupancy, @Driver_Name, @Address, @Driver_License, @DContact_No, @AlternateNo, @Supporter_Name, @Supporter_ContactNo)" SelectCommand="SELECT * FROM [BusEntry]" UpdateCommand="UPDATE [BusEntry] SET [BusId] = @BusId, [Date] = @Date, [Bus_No] = @Bus_No, [Type] = @Type, [OutTime] = @OutTime, [InTime] = @InTime, [FromLoc] = @FromLoc, [ToLoc] = @ToLoc, [Occupancy] = @Occupancy, [Driver_Name] = @Driver_Name, [Address] = @Address, [Driver_License] = @Driver_License, [DContact_No] = @DContact_No, [AlternateNo] = @AlternateNo, [Supporter_Name] = @Supporter_Name, [Supporter_ContactNo] = @Supporter_ContactNo WHERE [Id] = @Id">
                  <DeleteParameters>
                      <asp:Parameter Name="Id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="BusId" Type="String" />
                      <asp:Parameter Name="Date" Type="String" />
                      <asp:Parameter Name="Bus_No" Type="String" />
                      <asp:Parameter Name="Type" Type="String" />
                      <asp:Parameter Name="OutTime" Type="String" />
                      <asp:Parameter Name="InTime" Type="String" />
                      <asp:Parameter Name="FromLoc" Type="String" />
                      <asp:Parameter Name="ToLoc" Type="String" />
                      <asp:Parameter Name="Occupancy" Type="String" />
                      <asp:Parameter Name="Driver_Name" Type="String" />
                      <asp:Parameter Name="Address" Type="String" />
                      <asp:Parameter Name="Driver_License" Type="String" />
                      <asp:Parameter Name="DContact_No" Type="String" />
                      <asp:Parameter Name="AlternateNo" Type="String" />
                      <asp:Parameter Name="Supporter_Name" Type="String" />
                      <asp:Parameter Name="Supporter_ContactNo" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="BusId" Type="String" />
                      <asp:Parameter Name="Date" Type="String" />
                      <asp:Parameter Name="Bus_No" Type="String" />
                      <asp:Parameter Name="Type" Type="String" />
                      <asp:Parameter Name="OutTime" Type="String" />
                      <asp:Parameter Name="InTime" Type="String" />
                      <asp:Parameter Name="FromLoc" Type="String" />
                      <asp:Parameter Name="ToLoc" Type="String" />
                      <asp:Parameter Name="Occupancy" Type="String" />
                      <asp:Parameter Name="Driver_Name" Type="String" />
                      <asp:Parameter Name="Address" Type="String" />
                      <asp:Parameter Name="Driver_License" Type="String" />
                      <asp:Parameter Name="DContact_No" Type="String" />
                      <asp:Parameter Name="AlternateNo" Type="String" />
                      <asp:Parameter Name="Supporter_Name" Type="String" />
                      <asp:Parameter Name="Supporter_ContactNo" Type="String" />
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
