<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="SchoolStaffRegistration.aspx.cs" Inherits="SchoolProject.SchoolStaffRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel"> 
        <div class="main-content">
            <div class="content-wrapper">
                <!-- Wizard Starts -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="content-header">TEACHING REGISTRATION</div>
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
                                                            <asp:Label runat="server" ID="LabStaffId" Text="Staff Id"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtStaffId" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TxtStaffId" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabDate" Text="Date"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtDate" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TxtDate" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabName" Text="Full Name"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtName" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TxtName" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabGender" Text="Gender"></asp:Label>
                                                            <asp:DropDownList ID="TxtGender" class="form-control" runat="server">
                                                                <asp:ListItem Text="Select" />
                                                                <asp:ListItem Text="Male" />
                                                                <asp:ListItem Text="Female" />
                                                            </asp:DropDownList>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="TxtGender" ErrorMessage="Please Enter Field" InitialValue="Select" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabDesignation" Text="Desgination"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtDesgination" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TxtDesgination" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabDept" Text="Department"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtDepartment" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TxtDepartment" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabSubject" Text="Subject"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtSubject" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="TxtSubject" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabExperience" Text="Experience"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtExperience" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="TxtExperience" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabEmail" Text="Email"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtEmail" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="TxtEmail" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabReligion" Text="Religion"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtReligion" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="TxtReligion" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabMStatus" Text="Marital Status"></asp:Label>
                                                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                                                <asp:ListItem Text="Select" />
                                                                <asp:ListItem Text="Married" />
                                                                <asp:ListItem Text="Single" />
                                                            </asp:DropDownList>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" ForeColor="Red" ControlToValidate="DropDownList1" ErrorMessage="Please Enter Field" InitialValue="Select" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabJoinDate" Text=" Joining Date  "></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtJoinDate" TextMode="Date" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" ForeColor="Red" ControlToValidate="TxtJoinDate" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabPhone" Text="Contact No "></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtPhone" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13" ForeColor="Red" ControlToValidate="TxtPhone" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabAltNumber" Text="Alternate Number "></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtAltNumber" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator14" ForeColor="Red" ControlToValidate="TxtAltNumber" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabAddress" Text="Address"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtAddress" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator15" ForeColor="Red" ControlToValidate="TxtAddress" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>
                                                    <%--<div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="lblusername" Text="Username"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtusername" class="form-control"/>
                                                        </div>
                                                    </div>--%>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="Labusername" Text="Username"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtusername" class="form-control"></asp:TextBox>
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator16" ForeColor="Red" ControlToValidate="txtusername" ErrorMessage="Please Enter Field" />
                                                        </div>

                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="lblpwd" Text="Password"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtpwd" class="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator17" ForeColor="Red" ControlToValidate="txtpwd" ErrorMessage="Please Enter Field" />
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label ID="LabPhoto" Text="Photo" runat="server" />
                                                            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
                                                            <br />
                                                        </div>
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator18" ForeColor="Red" ControlToValidate="FileUpload1" ErrorMessage="Please Upload Photo" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label ID="LabAddproof" Text="Address Proof" runat="server" />
                                                            <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" />
                                                             <br />
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator19" ForeColor="Red" ControlToValidate="FileUpload2" ErrorMessage="Please Upload Address Proof" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label ID="LabIdProof" Text="Id Proof" runat="server" />
                                                            <asp:FileUpload ID="FileUpload3" runat="server" AllowMultiple="true" />
                                                             <br />
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator20" ForeColor="Red" ControlToValidate="FileUpload3" ErrorMessage="Please Upload Id Proof" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabSattus" Text="Status"></asp:Label>
                                                            <asp:DropDownList ID="TxtStatus" class="form-control" runat="server">
                                                                <asp:ListItem Text="Select" />
                                                                <asp:ListItem Text="Submitted" />
                                                                <asp:ListItem Text="NotSubmitted" />
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator21" ForeColor="Red" ControlToValidate="TxtStatus" ErrorMessage="Please Upload Photo" InitialValue="Select" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8" style="margin-left:261px;">
                                                        <div class="form-group">
                                                            <asp:Button ID="SubmitButton" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="SubmitButton_Click" />
                                                        </div>
                                                    </div>
                                                    <asp:Label ID="msg" runat="server" />
                                                </div>
                                            </fieldset>
                                             <div style="overflow:scroll">
                                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                                     <Columns>
                                                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                         <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                         <asp:BoundField DataField="Staf_Id" HeaderText="Staf_Id" SortExpression="Staf_Id" />
                                                         <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                         <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                                                         <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                                         <asp:BoundField DataField="Desgination" HeaderText="Desgination" SortExpression="Desgination" />
                                                         <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                                                         <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                                                         <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                                         <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                         <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
                                                         <asp:BoundField DataField="MaritalStatus" HeaderText="MaritalStatus" SortExpression="MaritalStatus" />
                                                         <asp:BoundField DataField="JoiningDate" HeaderText="JoiningDate" SortExpression="JoiningDate" />
                                                         <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                                                         <asp:BoundField DataField="AltNumber" HeaderText="AltNumber" SortExpression="AltNumber" />
                                                         <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                                         <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                                                         <asp:BoundField DataField="AddressProof" HeaderText="AddressProof" SortExpression="AddressProof" />
                                                         <asp:BoundField DataField="Id_Proof" HeaderText="Id_Proof" SortExpression="Id_Proof" />
                                                         <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                                         <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                                         <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
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
                                                 <br />
                                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [StaffRegistration] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [StaffRegistration] ([Staf_Id], [Date], [FullName], [Gender], [Desgination], [Department], [Subject], [Experience], [Email], [Religion], [MaritalStatus], [JoiningDate], [ContactNo], [AltNumber], [Address], [Photo], [AddressProof], [Id_Proof], [Status], [Username], [Password]) VALUES (@Staf_Id, @Date, @FullName, @Gender, @Desgination, @Department, @Subject, @Experience, @Email, @Religion, @MaritalStatus, @JoiningDate, @ContactNo, @AltNumber, @Address, @Photo, @AddressProof, @Id_Proof, @Status, @Username, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [StaffRegistration]" UpdateCommand="UPDATE [StaffRegistration] SET [Staf_Id] = @Staf_Id, [Date] = @Date, [FullName] = @FullName, [Gender] = @Gender, [Desgination] = @Desgination, [Department] = @Department, [Subject] = @Subject, [Experience] = @Experience, [Email] = @Email, [Religion] = @Religion, [MaritalStatus] = @MaritalStatus, [JoiningDate] = @JoiningDate, [ContactNo] = @ContactNo, [AltNumber] = @AltNumber, [Address] = @Address, [Photo] = @Photo, [AddressProof] = @AddressProof, [Id_Proof] = @Id_Proof, [Status] = @Status, [Username] = @Username, [Password] = @Password WHERE [Id] = @original_Id">
                                                     <DeleteParameters>
                                                         <asp:Parameter Name="original_Id" Type="Int32" />

                                                     </DeleteParameters>
                                                     <InsertParameters>
                                                         <asp:Parameter Name="Staf_Id" Type="String" />
                                                         <asp:Parameter Name="Date" Type="String" />
                                                         <asp:Parameter Name="FullName" Type="String" />
                                                         <asp:Parameter Name="Gender" Type="String" />
                                                         <asp:Parameter Name="Desgination" Type="String" />
                                                         <asp:Parameter Name="Department" Type="String" />
                                                         <asp:Parameter Name="Subject" Type="String" />
                                                         <asp:Parameter Name="Experience" Type="String" />
                                                         <asp:Parameter Name="Email" Type="String" />
                                                         <asp:Parameter Name="Religion" Type="String" />
                                                         <asp:Parameter Name="MaritalStatus" Type="String" />
                                                         <asp:Parameter Name="JoiningDate" Type="String" />
                                                         <asp:Parameter Name="ContactNo" Type="Int64" />
                                                         <asp:Parameter Name="AltNumber" Type="Int64" />
                                                         <asp:Parameter Name="Address" Type="String" />
                                                         <asp:Parameter Name="Photo" Type="String" />
                                                         <asp:Parameter Name="AddressProof" Type="String" />
                                                         <asp:Parameter Name="Id_Proof" Type="String" />
                                                         <asp:Parameter Name="Status" Type="String" />
                                                         <asp:Parameter Name="Username" Type="String" />
                                                         <asp:Parameter Name="Password" Type="String" />

                                                     </InsertParameters>
                                                     <UpdateParameters>
                                                         <asp:Parameter Name="Staf_Id" Type="String" />
                                                         <asp:Parameter Name="Date" Type="String" />
                                                         <asp:Parameter Name="FullName" Type="String" />
                                                         <asp:Parameter Name="Gender" Type="String" />
                                                         <asp:Parameter Name="Desgination" Type="String" />
                                                         <asp:Parameter Name="Department" Type="String" />
                                                         <asp:Parameter Name="Subject" Type="String" />
                                                         <asp:Parameter Name="Experience" Type="String" />
                                                         <asp:Parameter Name="Email" Type="String" />
                                                         <asp:Parameter Name="Religion" Type="String" />
                                                         <asp:Parameter Name="MaritalStatus" Type="String" />
                                                         <asp:Parameter Name="JoiningDate" Type="String" />
                                                         <asp:Parameter Name="ContactNo" Type="Int64" />
                                                         <asp:Parameter Name="AltNumber" Type="Int64" />
                                                         <asp:Parameter Name="Address" Type="String" />
                                                         <asp:Parameter Name="Photo" Type="String" />
                                                         <asp:Parameter Name="AddressProof" Type="String" />
                                                         <asp:Parameter Name="Id_Proof" Type="String" />
                                                         <asp:Parameter Name="Status" Type="String" />
                                                         <asp:Parameter Name="Username" Type="String" />
                                                         <asp:Parameter Name="Password" Type="String" />
                                                         <asp:Parameter Name="original_Id" Type="Int32" />
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
