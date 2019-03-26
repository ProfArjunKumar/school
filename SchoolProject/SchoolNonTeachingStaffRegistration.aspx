<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="SchoolNonTeachingStaffRegistration.aspx.cs" Inherits="SchoolProject.SchoolNonTeachingStaffRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="main-content">
            <div class="content-wrapper">
                <!-- Wizard Starts -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="content-header">NON-TEACHING REGISTRATION</div>
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
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabDate" Text="Date"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtDate" class="form-control" />

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabName" Text="Full Name"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtName" class="form-control" />

                                                        </div>
                                                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TxtName" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabGender" Text="Gender"></asp:Label>
                                                            <asp:DropDownList ID="TxtGender" class="form-control" runat="server">
                                                                <asp:ListItem Text="Select" />
                                                                <asp:ListItem Text="Male" />
                                                                <asp:ListItem Text="Female" />
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator15" ForeColor="Red" ControlToValidate="TxtGender" ErrorMessage="Please Enter Field" InitialValue="Select" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabDept" Text="Department"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtDepartment" class="form-control" />
                                                        </div>
                                                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TxtDepartment" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabEmail" Text="Email"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtEmail" class="form-control" />
                                                        </div>
                                                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TxtEmail" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabReligion" Text="Religion"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtReligion" class="form-control" />
                                                        </div>
                                                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TxtReligion" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabMStatus" Text="Marital Status"></asp:Label>
                                                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                                                <asp:ListItem Text="Select" />
                                                                <asp:ListItem Text="Married" />
                                                                <asp:ListItem Text="Single" />
                                                                </asp:DropDownList>
                                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator16" ForeColor="Red" ControlToValidate="DropDownList1" ErrorMessage="Please Enter Field" InitialValue="Select" />
                                                                </div>

                                                        </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabJoinDate" Text=" Joining Date  "></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtJoinDate" TextMode="Date" class="form-control" />
                                                        </div>
                                                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TxtJoinDate" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabPhone" Text="Contact No "></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtPhone" class="form-control" />
                                                        </div>
                                                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="TxtPhone" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabAltNumber" Text="Alternate Number "></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtAltNumber" class="form-control" />
                                                        </div>
                                                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="TxtAltNumber" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabAddress" Text="Address"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtAddress" class="form-control" />
                                                        </div>
                                                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="TxtAddress" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                     <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="Labusername" Text="Username"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtusername" class="form-control"></asp:TextBox>
                                                              <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="txtusername" ErrorMessage="Please Enter Field" />
                                                        </div>

                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="lblpwd" Text="Password"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtpwd" class="form-control" />
                                                        </div>
                                                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="txtpwd" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label ID="LabPhoto" Text="Photo" runat="server" />
                                                            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
                                                            <br />
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator14" ForeColor="Red" ControlToValidate="FileUpload1" ErrorMessage="Please Upload a Photo" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label ID="LabAddproof" Text="Address Proof" runat="server" />
                                                            <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" />
                                                             <br />
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13" ForeColor="Red" ControlToValidate="FileUpload2" ErrorMessage="Please Upload Address Proof" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label ID="LabIdProof" Text="Id Proof" runat="server" />
                                                            <asp:FileUpload ID="FileUpload3" runat="server" AllowMultiple="true" />
                                                             <br />
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" ForeColor="Red" ControlToValidate="FileUpload3" ErrorMessage="Please Upload Id Proof" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabSattus" Text="Status"></asp:Label>
                                                            <asp:DropDownList ID="TxtStatus" class="form-control" runat="server">
                                                                <asp:ListItem Text="Select" />
                                                                <asp:ListItem Text="Submitted" />
                                                                <asp:ListItem Text="NotSubmitted" />
                                                            </asp:DropDownList>
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" ForeColor="Red" ControlToValidate="Txtstatus" ErrorMessage="Please Enter Field" />
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
                                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                        <asp:BoundField DataField="Staf_Id" HeaderText="Staf_Id" SortExpression="Staf_Id" />
                                                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                                                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
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

                                                <br />
                                                <br />
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [NonTech_Reg] WHERE [Id] = @original_Id AND (([Staf_Id] = @original_Staf_Id) OR ([Staf_Id] IS NULL AND @original_Staf_Id IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([FullName] = @original_FullName) OR ([FullName] IS NULL AND @original_FullName IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Religion] = @original_Religion) OR ([Religion] IS NULL AND @original_Religion IS NULL)) AND (([MaritalStatus] = @original_MaritalStatus) OR ([MaritalStatus] IS NULL AND @original_MaritalStatus IS NULL)) AND (([JoiningDate] = @original_JoiningDate) OR ([JoiningDate] IS NULL AND @original_JoiningDate IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([AltNumber] = @original_AltNumber) OR ([AltNumber] IS NULL AND @original_AltNumber IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL)) AND (([AddressProof] = @original_AddressProof) OR ([AddressProof] IS NULL AND @original_AddressProof IS NULL)) AND (([Id_Proof] = @original_Id_Proof) OR ([Id_Proof] IS NULL AND @original_Id_Proof IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [NonTech_Reg] ([Staf_Id], [Date], [FullName], [Gender], [Department], [Email], [Religion], [MaritalStatus], [JoiningDate], [ContactNo], [AltNumber], [Address], [Photo], [AddressProof], [Id_Proof], [Status]) VALUES (@Staf_Id, @Date, @FullName, @Gender, @Department, @Email, @Religion, @MaritalStatus, @JoiningDate, @ContactNo, @AltNumber, @Address, @Photo, @AddressProof, @Id_Proof, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [NonTech_Reg]" UpdateCommand="UPDATE [NonTech_Reg] SET [Staf_Id] = @Staf_Id, [Date] = @Date, [FullName] = @FullName, [Gender] = @Gender, [Department] = @Department, [Email] = @Email, [Religion] = @Religion, [MaritalStatus] = @MaritalStatus, [JoiningDate] = @JoiningDate, [ContactNo] = @ContactNo, [AltNumber] = @AltNumber, [Address] = @Address, [Photo] = @Photo, [AddressProof] = @AddressProof, [Id_Proof] = @Id_Proof, [Status] = @Status WHERE [Id] = @original_Id AND (([Staf_Id] = @original_Staf_Id) OR ([Staf_Id] IS NULL AND @original_Staf_Id IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([FullName] = @original_FullName) OR ([FullName] IS NULL AND @original_FullName IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Religion] = @original_Religion) OR ([Religion] IS NULL AND @original_Religion IS NULL)) AND (([MaritalStatus] = @original_MaritalStatus) OR ([MaritalStatus] IS NULL AND @original_MaritalStatus IS NULL)) AND (([JoiningDate] = @original_JoiningDate) OR ([JoiningDate] IS NULL AND @original_JoiningDate IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([AltNumber] = @original_AltNumber) OR ([AltNumber] IS NULL AND @original_AltNumber IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Photo] = @original_Photo) OR ([Photo] IS NULL AND @original_Photo IS NULL)) AND (([AddressProof] = @original_AddressProof) OR ([AddressProof] IS NULL AND @original_AddressProof IS NULL)) AND (([Id_Proof] = @original_Id_Proof) OR ([Id_Proof] IS NULL AND @original_Id_Proof IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_Staf_Id" Type="String" />
                                                        <asp:Parameter Name="original_Date" Type="String" />
                                                        <asp:Parameter Name="original_FullName" Type="String" />
                                                        <asp:Parameter Name="original_Gender" Type="String" />
                                                        <asp:Parameter Name="original_Department" Type="String" />
                                                        <asp:Parameter Name="original_Email" Type="String" />
                                                        <asp:Parameter Name="original_Religion" Type="String" />
                                                        <asp:Parameter Name="original_MaritalStatus" Type="String" />
                                                        <asp:Parameter Name="original_JoiningDate" Type="String" />
                                                        <asp:Parameter Name="original_ContactNo" Type="String" />
                                                        <asp:Parameter Name="original_AltNumber" Type="String" />
                                                        <asp:Parameter Name="original_Address" Type="String" />
                                                        <asp:Parameter Name="original_Photo" Type="String" />
                                                        <asp:Parameter Name="original_AddressProof" Type="String" />
                                                        <asp:Parameter Name="original_Id_Proof" Type="String" />
                                                        <asp:Parameter Name="original_Status" Type="String" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="Staf_Id" Type="String" />
                                                        <asp:Parameter Name="Date" Type="String" />
                                                        <asp:Parameter Name="FullName" Type="String" />
                                                        <asp:Parameter Name="Gender" Type="String" />
                                                        <asp:Parameter Name="Department" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="Religion" Type="String" />
                                                        <asp:Parameter Name="MaritalStatus" Type="String" />
                                                        <asp:Parameter Name="JoiningDate" Type="String" />
                                                        <asp:Parameter Name="ContactNo" Type="String" />
                                                        <asp:Parameter Name="AltNumber" Type="String" />
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
                                                        <asp:Parameter Name="Department" Type="String" />
                                                        <asp:Parameter Name="Email" Type="String" />
                                                        <asp:Parameter Name="Religion" Type="String" />
                                                        <asp:Parameter Name="MaritalStatus" Type="String" />
                                                        <asp:Parameter Name="JoiningDate" Type="String" />
                                                        <asp:Parameter Name="ContactNo" Type="String" />
                                                        <asp:Parameter Name="AltNumber" Type="String" />
                                                        <asp:Parameter Name="Address" Type="String" />
                                                        <asp:Parameter Name="Photo" Type="String" />
                                                        <asp:Parameter Name="AddressProof" Type="String" />
                                                        <asp:Parameter Name="Id_Proof" Type="String" />
                                                        <asp:Parameter Name="Status" Type="String" />
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                        <asp:Parameter Name="original_Staf_Id" Type="String" />
                                                        <asp:Parameter Name="original_Date" Type="String" />
                                                        <asp:Parameter Name="original_FullName" Type="String" />
                                                        <asp:Parameter Name="original_Gender" Type="String" />
                                                        <asp:Parameter Name="original_Department" Type="String" />
                                                        <asp:Parameter Name="original_Email" Type="String" />
                                                        <asp:Parameter Name="original_Religion" Type="String" />
                                                        <asp:Parameter Name="original_MaritalStatus" Type="String" />
                                                        <asp:Parameter Name="original_JoiningDate" Type="String" />
                                                        <asp:Parameter Name="original_ContactNo" Type="String" />
                                                        <asp:Parameter Name="original_AltNumber" Type="String" />
                                                        <asp:Parameter Name="original_Address" Type="String" />
                                                        <asp:Parameter Name="original_Photo" Type="String" />
                                                        <asp:Parameter Name="original_AddressProof" Type="String" />
                                                        <asp:Parameter Name="original_Id_Proof" Type="String" />
                                                        <asp:Parameter Name="original_Status" Type="String" />
                                                        <asp:Parameter Name="Username" Type="String" />
                                                         <asp:Parameter Name="Password" Type="String" />
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
