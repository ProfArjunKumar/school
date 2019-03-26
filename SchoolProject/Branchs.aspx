<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Branchs.aspx.cs" Inherits="SchoolProject.Branchs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">BRANCHS</div>
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
                      <asp:label runat="server" Text="Branch Id"></asp:label>
                        <asp:TextBox runat="server" ID="txtId" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtId" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Branch Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtProseg" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtProseg" ErrorMessage="Please Enter Field" />
                    
                      </div>
                    </div>
                    
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Principal Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtProcode" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtProcode" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Address"></asp:label>
                        <asp:TextBox runat="server" ID="txtFuel" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtFuel" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
               <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" Style="color:#ffffff;" align="center" class="form-control  col-sm-8 gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button_Click" />
                    </div>
                  </div>
                </div>
              </fieldset>
                <asp:GridView ID="Gridview1"   runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="BranchId" HeaderText="BranchId" SortExpression="BranchId" />
                        <asp:BoundField DataField="BranchName" HeaderText="BranchName" SortExpression="BranchName" />
                        <asp:BoundField DataField="PrincipalName" HeaderText="PrincipalName" SortExpression="PrincipalName" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [Branches] WHERE [Id] = @original_Id AND (([BranchId] = @original_BranchId) OR ([BranchId] IS NULL AND @original_BranchId IS NULL)) AND (([BranchName] = @original_BranchName) OR ([BranchName] IS NULL AND @original_BranchName IS NULL)) AND (([PrincipalName] = @original_PrincipalName) OR ([PrincipalName] IS NULL AND @original_PrincipalName IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))" InsertCommand="INSERT INTO [Branches] ([BranchId], [BranchName], [PrincipalName], [Address]) VALUES (@BranchId, @BranchName, @PrincipalName, @Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Branches]" UpdateCommand="UPDATE [Branches] SET [BranchId] = @BranchId, [BranchName] = @BranchName, [PrincipalName] = @PrincipalName, [Address] = @Address WHERE [Id] = @original_Id AND (([BranchId] = @original_BranchId) OR ([BranchId] IS NULL AND @original_BranchId IS NULL)) AND (([BranchName] = @original_BranchName) OR ([BranchName] IS NULL AND @original_BranchName IS NULL)) AND (([PrincipalName] = @original_PrincipalName) OR ([PrincipalName] IS NULL AND @original_PrincipalName IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_BranchId" Type="String" />
                        <asp:Parameter Name="original_BranchName" Type="String" />
                        <asp:Parameter Name="original_PrincipalName" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BranchId" Type="String" />
                        <asp:Parameter Name="BranchName" Type="String" />
                        <asp:Parameter Name="PrincipalName" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BranchId" Type="String" />
                        <asp:Parameter Name="BranchName" Type="String" />
                        <asp:Parameter Name="PrincipalName" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_BranchId" Type="String" />
                        <asp:Parameter Name="original_BranchName" Type="String" />
                        <asp:Parameter Name="original_PrincipalName" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
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
