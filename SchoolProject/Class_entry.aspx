<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Class_entry.aspx.cs" Inherits="SchoolProject.Class_entry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">CLASS</div>
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
           <%--<form id="form" runat="server">--%>
              <!-- Step 1 -->
           
              <fieldset>
                <div class="row">
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Class Id"></asp:label>
                       <asp:TextBox runat="server" ID="TextBox1" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="Please Enter Field" />
                      </div>
                        </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                        <asp:DropDownList ID="classname"  CssClass="form-control" runat="server">
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
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="classname" ErrorMessage="Please Enter Field" InitialValue="Select Class" />
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Class Type"></asp:label>
                        <asp:DropDownList ID="classType"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Class Type" />
                               <asp:ListItem Text="Primary class" />
                                <asp:ListItem Text="Middle class" />
                            <asp:ListItem Text="High class" />
                                
                           </asp:DropDownList>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="classType" ErrorMessage="Please Enter Field"  InitialValue="Select Class Type"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Add Section"></asp:label>
                       <asp:TextBox runat="server" ID="section" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="section" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    
                <div class="col-md-8" style="margin-left:261px;width: 107px;height: 40px;">
                    <div class="form-group">
                        <asp:Button ID="Button" Style="color:#ffffff;"  align="center" class="form-control  col-sm-8 gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button_Click"   />
                    </div>
                  </div>
                </div>
              </fieldset>
              <br />
                <div style="overflow:scroll">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="922px">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="ClassId" HeaderText="ClassId" SortExpression="ClassId" />
                            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                            <asp:BoundField DataField="ClassType" HeaderText="ClassType" SortExpression="ClassType" />
                            <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [Classes] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Classes] ([ClassId], [Class], [ClassType], [Section]) VALUES (@ClassId, @Class, @ClassType, @Section)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [ClassId] = @ClassId, [Class] = @Class, [ClassType] = @ClassType, [Section] = @Section WHERE [Id] = @original_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ClassId" Type="String" />
                            <asp:Parameter Name="Class" Type="String" />
                            <asp:Parameter Name="ClassType" Type="String" />
                            <asp:Parameter Name="Section" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ClassId" Type="String" />
                            <asp:Parameter Name="Class" Type="String" />
                            <asp:Parameter Name="ClassType" Type="String" />
                            <asp:Parameter Name="Section" Type="String" />
                            <asp:Parameter Name="original_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
           <%--</form>--%>
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
