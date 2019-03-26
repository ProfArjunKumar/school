<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="FeeEntry.aspx.cs" Inherits="SchoolProject.FeeEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -webkit-box-flex: 0;
            -webkit-flex: 0 0 50%;
            -moz-box-flex: 0;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            left: 0px;
            top: 0px;
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
    <div class="col-sm-12">
        <div class="content-header">FEE ENTRY</div>
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
           
           
              <fieldset>
                <div class="row">
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Fee Id"></asp:label>
                        <asp:TextBox runat="server" ID="txtfeeid" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDate" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="txtdate" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Fee Type"></asp:label>
                        <asp:DropDownList ID="ddfee"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Fee" />
                                <asp:ListItem Text="Admission Fee" />
                                <asp:ListItem Text="Tution Fee" />
                                <asp:ListItem Text="Exam Fee" />
                                <asp:ListItem Text="Building Fee" />
                                <asp:ListItem Text="Enrolment Fee" />
                                
                           </asp:DropDownList>
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                        <asp:DropDownList ID="ddclass"  CssClass="form-control" runat="server">
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
                     <div class="auto-style1">
                  <div class="form-group">
                      <asp:label runat="server" ID="Label1" Text="Fee"></asp:label>
                        <asp:TextBox runat="server" ID="txtfee" class="form-control"/>
                      </div>
                    </div>
                    
                 <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="gradient-button gradient-button-1" OnClick="Button_Click" Text="Submit" runat="server" />
                    </div>
                  </div>
                </div>
              </fieldset>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="None">
                  <Columns>
                      <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                      <asp:BoundField DataField="FeeId" HeaderText="FeeId" SortExpression="FeeId" />
                      <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                      <asp:BoundField DataField="FeeType" HeaderText="FeeType" SortExpression="FeeType" />
                      <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                      <asp:BoundField DataField="Fee" HeaderText="Fee" SortExpression="Fee" />
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

           
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" DeleteCommand="DELETE FROM [FeeEntry] WHERE [Id] = @Id" InsertCommand="INSERT INTO [FeeEntry] ([FeeId], [Date], [FeeType], [Class], [Fee]) VALUES (@FeeId, @Date, @FeeType, @Class, @Fee)" SelectCommand="SELECT [Id], [FeeId], [Date], [FeeType], [Class], [Fee] FROM [FeeEntry] ORDER BY [Id], [FeeId], [Date]" UpdateCommand="UPDATE [FeeEntry] SET [FeeId] = @FeeId, [Date] = @Date, [FeeType] = @FeeType, [Class] = @Class, [Fee] = @Fee WHERE [Id] = @Id">
                  <DeleteParameters>
                      <asp:Parameter Name="Id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="FeeId" Type="String" />
                      <asp:Parameter Name="Date" Type="String" />
                      <asp:Parameter Name="FeeType" Type="String" />
                      <asp:Parameter Name="Class" Type="String" />
                      <asp:Parameter Name="Fee" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="FeeId" Type="String" />
                      <asp:Parameter Name="Date" Type="String" />
                      <asp:Parameter Name="FeeType" Type="String" />
                      <asp:Parameter Name="Class" Type="String" />
                      <asp:Parameter Name="Fee" Type="String" />
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
