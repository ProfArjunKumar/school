<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="StdBusEntry.aspx.cs" Inherits="SchoolProject.StdBusEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">BUS HOLDER'S ENTRY</div>
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
                       <asp:label runat="server" Text="Admission Id"></asp:label>
                        <asp:DropDownList ID="DDstudent" class="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DDstudent_SelectedIndexChanged"></asp:DropDownList>
                              <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator22" ForeColor="Red" ControlToValidate="Ddstudent" ErrorMessage="Please Enter Field" InitialValue="Select Id"/>
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
                              <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TxtStdName" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                       <asp:TextBox runat="server" ID="Txtclass" class="form-control"/>
                              <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="Txtclass" ErrorMessage="Please Enter Field" />
                     <%--  <asp:DropDownList ID="Class" CssClass="form-control" runat="server">
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
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">d
                      <asp:label runat="server" Text="Section"></asp:label>
                       <asp:TextBox runat="server" ID="Txtsection" class="form-control"/>
                              <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="Txtsection" ErrorMessage="Please Enter Field" />
                     <%--  <asp:DropDownList ID="Section" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Section" />
                                <asp:ListItem Text="A" />
                                <asp:ListItem Text="B" />
                                <asp:ListItem Text="C" />
                                <asp:ListItem Text="D" />
                                <asp:ListItem Text="E" />
                           </asp:DropDownList>--%>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Bus No"></asp:label>
                        <asp:DropDownList ID="DDbus" class="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DDbus_SelectedIndexChanged"></asp:DropDownList>
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Location"></asp:label>
                        <asp:TextBox runat="server" ID="TxtLocation" class="form-control"/>
                              <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TxtLocation" ErrorMessage="Please Enter Field" />
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Joining Date"></asp:label>
                        <asp:TextBox runat="server" ID="TxtJDate"  TextMode="Date" class="form-control"/>
                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TxtJDate" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Status "></asp:label>
                       <asp:DropDownList ID="Status"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Status" />
                                <asp:ListItem Text="Active" />
                                <asp:ListItem Text="Inactive" />
                           </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="Status" ErrorMessage="Please Enter Field" InitialValue="Select Status" />
                      </div>
                    </div>
                    <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button_Click" />
                    </div>
                  </div>
                </div>
              </fieldset>
               <div style="overflow:scroll;">
                   <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:BoundField DataField="AdmissionNo" HeaderText="AdmissionNo" SortExpression="AdmissionNo" />
                           <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                           <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                           <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                           <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                           <asp:BoundField DataField="BusNo" HeaderText="BusNo" SortExpression="BusNo" />
                           <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                           <asp:BoundField DataField="JoiningDate" HeaderText="JoiningDate" SortExpression="JoiningDate" />
                           <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [StdBusEntry] WHERE [Id] = @original_Id AND (([AdmissionNo] = @original_AdmissionNo) OR ([AdmissionNo] IS NULL AND @original_AdmissionNo IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Section] = @original_Section) OR ([Section] IS NULL AND @original_Section IS NULL)) AND (([BusNo] = @original_BusNo) OR ([BusNo] IS NULL AND @original_BusNo IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([JoiningDate] = @original_JoiningDate) OR ([JoiningDate] IS NULL AND @original_JoiningDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [StdBusEntry] ([AdmissionNo], [Date], [StudentName], [Class], [Section], [BusNo], [Location], [JoiningDate], [Status]) VALUES (@AdmissionNo, @Date, @StudentName, @Class, @Section, @BusNo, @Location, @JoiningDate, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [StdBusEntry]" UpdateCommand="UPDATE [StdBusEntry] SET [AdmissionNo] = @AdmissionNo, [Date] = @Date, [StudentName] = @StudentName, [Class] = @Class, [Section] = @Section, [BusNo] = @BusNo, [Location] = @Location, [JoiningDate] = @JoiningDate, [Status] = @Status WHERE [Id] = @original_Id AND (([AdmissionNo] = @original_AdmissionNo) OR ([AdmissionNo] IS NULL AND @original_AdmissionNo IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Section] = @original_Section) OR ([Section] IS NULL AND @original_Section IS NULL)) AND (([BusNo] = @original_BusNo) OR ([BusNo] IS NULL AND @original_BusNo IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([JoiningDate] = @original_JoiningDate) OR ([JoiningDate] IS NULL AND @original_JoiningDate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
                       <DeleteParameters>
                           <asp:Parameter Name="original_AdmissionNo" Type="String" />
                           <asp:Parameter Name="original_Date" Type="String" />
                           <asp:Parameter Name="original_StudentName" Type="String" />
                           <asp:Parameter Name="original_Class" Type="String" />
                           <asp:Parameter Name="original_Section" Type="String" />
                           <asp:Parameter Name="original_BusNo" Type="String" />
                           <asp:Parameter Name="original_Location" Type="String" />
                           <asp:Parameter Name="original_JoiningDate" Type="String" />
                           <asp:Parameter Name="original_Status" Type="String" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="AdmissionNo" Type="String" />
                           <asp:Parameter Name="Date" Type="String" />
                           <asp:Parameter Name="StudentName" Type="String" />
                           <asp:Parameter Name="Class" Type="String" />
                           <asp:Parameter Name="Section" Type="String" />
                           <asp:Parameter Name="BusNo" Type="String" />
                           <asp:Parameter Name="Location" Type="String" />
                           <asp:Parameter Name="JoiningDate" Type="String" />
                           <asp:Parameter Name="Status" Type="String" />
                       </InsertParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="AdmissionNo" Type="String" />
                           <asp:Parameter Name="Date" Type="String" />
                           <asp:Parameter Name="StudentName" Type="String" />
                           <asp:Parameter Name="Class" Type="String" />
                           <asp:Parameter Name="Section" Type="String" />
                           <asp:Parameter Name="BusNo" Type="String" />
                           <asp:Parameter Name="Location" Type="String" />
                           <asp:Parameter Name="JoiningDate" Type="String" />
                           <asp:Parameter Name="Status" Type="String" />
                           <asp:Parameter Name="original_Id" Type="Int32" />
                           <asp:Parameter Name="original_AdmissionNo" Type="String" />
                           <asp:Parameter Name="original_Date" Type="String" />
                           <asp:Parameter Name="original_StudentName" Type="String" />
                           <asp:Parameter Name="original_Class" Type="String" />
                           <asp:Parameter Name="original_Section" Type="String" />
                           <asp:Parameter Name="original_BusNo" Type="String" />
                           <asp:Parameter Name="original_Location" Type="String" />
                           <asp:Parameter Name="original_JoiningDate" Type="String" />
                           <asp:Parameter Name="original_Status" Type="String" />
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
