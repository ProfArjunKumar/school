<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Gaurdian_std.aspx.cs" Inherits="SchoolProject.Gaurdian_std" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">PARENT/GAURDIAN INFO</div>
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
                        <asp:label runat="server" Text="Student Id"></asp:label>
                        <asp:DropDownList ID="DDstudent" class="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DDstudent_SelectedIndexChanged"></asp:DropDownList>
                     <%-- <asp:label runat="server" ID="LabStdId" Text="Student Id"></asp:label>
                        <asp:TextBox runat="server" ID="TxtStdId" class="form-control"/>--%>
                      </div>
                    </div>
                       <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDate" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="TxtDate" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Student Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtStdName" class="form-control"/>
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                        <%--<asp:DropDownList  ID="Class"  CssClass="form-control" runat="server">
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
                           </asp:DropDownList>--%>
                      <asp:TextBox runat="server" ID="Txtclass" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Section"></asp:label>
                        <asp:TextBox runat="server" ID="TxtSection" class="form-control"/>
                    
                      </div>
                    </div>
                  <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Gaurdian Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtGdName" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Relation"></asp:label>
                        <asp:TextBox runat="server" ID="TxtRelation" class="form-control"/>
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Gaurdian Contact No"></asp:label>
                        <asp:TextBox runat="server" ID="TxtGdPhone" class="form-control"/>
                    
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Garden Occupation"></asp:label>
                        <asp:TextBox runat="server" ID="TxtGdOccupation" class="form-control"/>
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                     <asp:label runat="server" Text="Address"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAddress" class="form-control"/>
                    
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
                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                      <Columns>
                          <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                          <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                          <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                          <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                          <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                          <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                          <asp:BoundField DataField="GaurdianName" HeaderText="GaurdianName" SortExpression="GaurdianName" />
                          <asp:BoundField DataField="Relation" HeaderText="Relation" SortExpression="Relation" />
                          <asp:BoundField DataField="GaurdianPhoneNo" HeaderText="GaurdianPhoneNo" SortExpression="GaurdianPhoneNo" />
                          <asp:BoundField DataField="GardenOccupation" HeaderText="GardenOccupation" SortExpression="GardenOccupation" />
                          <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                          <asp:CommandField ShowEditButton="True" />
                          <asp:CommandField ShowDeleteButton="True" />
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
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [Parents_info] WHERE [Id] = @original_Id AND (([StudentId] = @original_StudentId) OR ([StudentId] IS NULL AND @original_StudentId IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Section] = @original_Section) OR ([Section] IS NULL AND @original_Section IS NULL)) AND (([GaurdianName] = @original_GaurdianName) OR ([GaurdianName] IS NULL AND @original_GaurdianName IS NULL)) AND (([Relation] = @original_Relation) OR ([Relation] IS NULL AND @original_Relation IS NULL)) AND (([GaurdianPhoneNo] = @original_GaurdianPhoneNo) OR ([GaurdianPhoneNo] IS NULL AND @original_GaurdianPhoneNo IS NULL)) AND (([GardenOccupation] = @original_GardenOccupation) OR ([GardenOccupation] IS NULL AND @original_GardenOccupation IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))" InsertCommand="INSERT INTO [Parents_info] ([StudentId], [Date], [StudentName], [Class], [Section], [GaurdianName], [Relation], [GaurdianPhoneNo], [GardenOccupation], [Address]) VALUES (@StudentId, @Date, @StudentName, @Class, @Section, @GaurdianName, @Relation, @GaurdianPhoneNo, @GardenOccupation, @Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Parents_info]" UpdateCommand="UPDATE [Parents_info] SET [StudentId] = @StudentId, [Date] = @Date, [StudentName] = @StudentName, [Class] = @Class, [Section] = @Section, [GaurdianName] = @GaurdianName, [Relation] = @Relation, [GaurdianPhoneNo] = @GaurdianPhoneNo, [GardenOccupation] = @GardenOccupation, [Address] = @Address WHERE [Id] = @original_Id AND (([StudentId] = @original_StudentId) OR ([StudentId] IS NULL AND @original_StudentId IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Section] = @original_Section) OR ([Section] IS NULL AND @original_Section IS NULL)) AND (([GaurdianName] = @original_GaurdianName) OR ([GaurdianName] IS NULL AND @original_GaurdianName IS NULL)) AND (([Relation] = @original_Relation) OR ([Relation] IS NULL AND @original_Relation IS NULL)) AND (([GaurdianPhoneNo] = @original_GaurdianPhoneNo) OR ([GaurdianPhoneNo] IS NULL AND @original_GaurdianPhoneNo IS NULL)) AND (([GardenOccupation] = @original_GardenOccupation) OR ([GardenOccupation] IS NULL AND @original_GardenOccupation IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))">
                      <DeleteParameters>
                          <asp:Parameter Name="original_Id" Type="Int32" />
                          <asp:Parameter Name="original_StudentId" Type="String" />
                          <asp:Parameter Name="original_Date" Type="String" />
                          <asp:Parameter Name="original_StudentName" Type="String" />
                          <asp:Parameter Name="original_Class" Type="String" />
                          <asp:Parameter Name="original_Section" Type="String" />
                          <asp:Parameter Name="original_GaurdianName" Type="String" />
                          <asp:Parameter Name="original_Relation" Type="String" />
                          <asp:Parameter Name="original_GaurdianPhoneNo" Type="String" />
                          <asp:Parameter Name="original_GardenOccupation" Type="String" />
                          <asp:Parameter Name="original_Address" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="StudentId" Type="String" />
                          <asp:Parameter Name="Date" Type="String" />
                          <asp:Parameter Name="StudentName" Type="String" />
                          <asp:Parameter Name="Class" Type="String" />
                          <asp:Parameter Name="Section" Type="String" />
                          <asp:Parameter Name="GaurdianName" Type="String" />
                          <asp:Parameter Name="Relation" Type="String" />
                          <asp:Parameter Name="GaurdianPhoneNo" Type="String" />
                          <asp:Parameter Name="GardenOccupation" Type="String" />
                          <asp:Parameter Name="Address" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="StudentId" Type="String" />
                          <asp:Parameter Name="Date" Type="String" />
                          <asp:Parameter Name="StudentName" Type="String" />
                          <asp:Parameter Name="Class" Type="String" />
                          <asp:Parameter Name="Section" Type="String" />
                          <asp:Parameter Name="GaurdianName" Type="String" />
                          <asp:Parameter Name="Relation" Type="String" />
                          <asp:Parameter Name="GaurdianPhoneNo" Type="String" />
                          <asp:Parameter Name="GardenOccupation" Type="String" />
                          <asp:Parameter Name="Address" Type="String" />
                          <asp:Parameter Name="original_Id" Type="Int32" />
                          <asp:Parameter Name="original_StudentId" Type="String" />
                          <asp:Parameter Name="original_Date" Type="String" />
                          <asp:Parameter Name="original_StudentName" Type="String" />
                          <asp:Parameter Name="original_Class" Type="String" />
                          <asp:Parameter Name="original_Section" Type="String" />
                          <asp:Parameter Name="original_GaurdianName" Type="String" />
                          <asp:Parameter Name="original_Relation" Type="String" />
                          <asp:Parameter Name="original_GaurdianPhoneNo" Type="String" />
                          <asp:Parameter Name="original_GardenOccupation" Type="String" />
                          <asp:Parameter Name="original_Address" Type="String" />
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
