<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="StdRegistation.aspx.cs" Inherits="SchoolProject.StdRegistation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">STUDENT REGISTRATION</div>
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
                      <asp:label runat="server" ID="LabStdId" Text="StdId"></asp:label>
                        <asp:TextBox runat="server" ID="TxtStdId"  class="form-control"/>
                      <%--<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" ForeColor="Red" ControlToValidate="Txt" ErrorMessage="Please Enter Field" />--%>
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
                       <asp:label runat="server" Text="Admission Id"></asp:label>
                        <asp:DropDownList ID="DDstudent" class="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DDstudent_SelectedIndexChanged"></asp:DropDownList>
                      <%--<asp:label runat="server" ID="LabAdmsId" Text="Admission No"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAdmsNo" class="form-control"/>--%>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" ForeColor="Red" ControlToValidate="DDstudent" ErrorMessage="Please Enter Field" InitialValue="Select Id" />
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabAdmsDate" Text="Admission Date"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAdmsDate" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TxtAdmsDate" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabSclName" Text="School Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtSclName" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TxtSclName" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabStdName" Text="Student Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtStdName" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TxtStdName" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                   
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Acadamic Year"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAcdYear" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TxtAcdYear" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabERollNo" Text="Enrollment No"></asp:label>
                        <asp:TextBox runat="server" ID="TxtRollNo" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TxtRollNo" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabGender" Text="Gender"></asp:label>
                       <asp:TextBox runat="server" ID="Txtgender" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="Txtgender" ErrorMessage="Please Enter Field" />
                       <%--  <asp:DropDownList ID="DDGender" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Gender" />
                                <asp:ListItem Text="MALE" />
                                <asp:ListItem Text="FEMALE" />
                                <asp:ListItem Text="OTHER" />
                           </asp:DropDownList>--%>
                      </div>
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabClass" Text="Class"></asp:label>
                       <%-- <asp:DropDownList ID="DDClass"  CssClass="form-control" runat="server">
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
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="Txtclass" ErrorMessage="Please Enter Field" InitialValue="-1" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabSection" Text="Section"></asp:label>
                      <%-- <asp:DropDownList ID="DDSection" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Section" />
                                <asp:ListItem Text="A" />
                                <asp:ListItem Text="B" />
                                <asp:ListItem Text="C" />
                                <asp:ListItem Text="D" />
                                <asp:ListItem Text="E" />
                           </asp:DropDownList>--%>
                       <asp:TextBox runat="server" ID="Txtsection" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="Txtsection" ErrorMessage="Please Enter Field" InitialValue="-1" />
                      </div>
                    </div>
                    
                   
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDob" Text="Date of Birth"></asp:label>
                        <asp:TextBox runat="server" ID="TxtDob" TextMode="Date" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="TxtDob" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabEmail" Text="Email Id"></asp:label>
                        <asp:TextBox runat="server" ID="TxtEmail" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="TxtEmail" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabFatherName" Text="Father Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtFatherName"  class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" ForeColor="Red" ControlToValidate="TxtFatherName" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabMotherName" Text="Mother Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtMotherName"  class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13" ForeColor="Red" ControlToValidate="TxtMotherName" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <div class="col-md-6">
                       <div class="form-group">
                      <asp:label runat="server" ID="Label2" Text="Fee Details"></asp:label>
                        <asp:TextBox runat="server" ID="txtfee"  class="form-control"/>
                           <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator14" ForeColor="Red" ControlToValidate="txtfee" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabFatherOcc" Text="Parent Occupation"></asp:label>
                        <asp:TextBox runat="server" ID="TxtFtrOcc" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator15" ForeColor="Red" ControlToValidate="TxtFtrOcc" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabNationality" Text="Nationality"></asp:label>
                        <asp:TextBox runat="server" ID="TxtNationality" class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator16" ForeColor="Red" ControlToValidate="TxtNationality" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabReligion" Text="Religion"></asp:label>
                        <asp:TextBox runat="server" ID="TxtReligion" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator17" ForeColor="Red" ControlToValidate="TxtReligion" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabCategory" Text="Category"></asp:label>
                        <asp:TextBox runat="server" ID="TxtCategory" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator18" ForeColor="Red" ControlToValidate="TxtCategory" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabState" Text="State"></asp:label>
                        <asp:TextBox runat="server" ID="TxtState" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator19" ForeColor="Red" ControlToValidate="TxtState" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabCountry" Text="Country"></asp:label>
                        <asp:TextBox runat="server" ID="TxtCountry" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator20" ForeColor="Red" ControlToValidate="TxtCountry" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabTempAddress" Text="Temporary Address"></asp:label>
                        <asp:TextBox runat="server" ID="TxtTemAdd" class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator21" ForeColor="Red" ControlToValidate="TxtTemAdd" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabPerAdd" Text="Permanent Address"></asp:label>
                        <asp:TextBox runat="server" ID="TxtPerAdd" class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator22" ForeColor="Red" ControlToValidate="TxtPerAdd" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabCountact" Text="Contact No"></asp:label>
                        <asp:TextBox runat="server" ID="TxtCountact"  class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator23" ForeColor="Red" ControlToValidate="TxtCountact" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabAltNo" Text="Alternate Contact No"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAltNo"  class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator24" ForeColor="Red" ControlToValidate="TxtAltNo" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="Labuser" Text="Username"></asp:label>
                        <asp:TextBox runat="server" ID="Txtuser"  class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator25" ForeColor="Red" ControlToValidate="Txtuser" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="Labpwd" Text="Password"></asp:label>
                        <asp:TextBox runat="server" ID="Txtpwd"  class="form-control"/>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator26" ForeColor="Red" ControlToValidate="Txtpwd" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="LabTc" Text="Transfer Certificate" runat="server" />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator27" ForeColor="Red" ControlToValidate="FileUpload1" ErrorMessage="Please Upload File" />
                    </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="LabSC" Text="Study Certificate " runat="server" />
                        <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" />

                        <br />
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator28" ForeColor="Red" ControlToValidate="FileUpload2" ErrorMessage="Please Upload File" />
                    </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="LabDOBC" Text="Date of Birth Certificate" runat="server" />
                        <asp:FileUpload ID="FileUpload3" runat="server" AllowMultiple="true" />
                        <br />
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator29" ForeColor="Red" ControlToValidate="FileUpload3" ErrorMessage="Please Upload File" />
                    </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="LabCC" Text="Caste Certificate" runat="server" />
                        <asp:FileUpload ID="FileUpload4" runat="server" AllowMultiple="true" />
                        <br />
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator30" ForeColor="Red" ControlToValidate="FileUpload4" ErrorMessage="Please Upload File" />
                    </div>
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="Label1" Text="Photo" runat="server" />
                        <asp:FileUpload ID="FileUpload5" runat="server" AllowMultiple="true" />
                        <br />
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator31" ForeColor="Red" ControlToValidate="FileUpload5" ErrorMessage="Please Upload File" />
                    </div>
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabStatus" Text="Status "></asp:label>
                       <asp:DropDownList ID="DDStatus" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Status" />
                                <asp:ListItem Text="Active" />
                                <asp:ListItem Text="Inactive" />
                           </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator32" ForeColor="Red" ControlToValidate="DDStatus" ErrorMessage="Please Upload File" InitialValue="Please Select the Status" />
                      </div>
                    </div>
                 <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button_Click" />
                    </div>
                  </div>
                     <asp:Label ID="msg" runat="server" />
                </div>
              </fieldset>
                <div style="overflow:scroll">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <%--<asp:ImageField DataImageUrlField="Photo" HeaderText="Photo" DataImageUrlFormatString="~/UploadedFiles/{0}.jpg"></asp:ImageField>--%>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                            <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="AdmissionNo" HeaderText="AdmissionNo" SortExpression="AdmissionNo" />
                            <asp:BoundField DataField="AdmissionDate" HeaderText="AdmissionDate" SortExpression="AdmissionDate" />
                            <asp:BoundField DataField="SchoolName" HeaderText="SchoolName" SortExpression="SchoolName" />
                            <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                            <asp:BoundField DataField="AcadamicYear" HeaderText="AcadamicYear" SortExpression="AcadamicYear" />
                            <asp:BoundField DataField="EnrollmentNo" HeaderText="EnrollmentNo" SortExpression="EnrollmentNo" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                            <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                            <asp:BoundField DataField="DateofBirth" HeaderText="DateofBirth" SortExpression="DateofBirth" />
                            <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                            <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                            <asp:BoundField DataField="MotherName" HeaderText="MotherName" SortExpression="MotherName" />
                            <asp:BoundField DataField="ParentOccupation" HeaderText="ParentOccupation" SortExpression="ParentOccupation" />
                            <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                            <asp:BoundField DataField="Religion" HeaderText="Religion" SortExpression="Religion" />
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                            <asp:BoundField DataField="TemporaryAddress" HeaderText="TemporaryAddress" SortExpression="TemporaryAddress" />
                            <asp:BoundField DataField="PermanentAddress" HeaderText="PermanentAddress" SortExpression="PermanentAddress" />
                            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                            <asp:BoundField DataField="AlternateContactNo" HeaderText="AlternateContactNo" SortExpression="AlternateContactNo" />
                            <asp:BoundField DataField="TransferCertificate" HeaderText="TransferCertificate" SortExpression="TransferCertificate" />
                            <asp:BoundField DataField="StudyCertificate" HeaderText="StudyCertificate" SortExpression="StudyCertificate" />
                            <asp:BoundField DataField="DateofBirthCertificate" HeaderText="DateofBirthCertificate" SortExpression="DateofBirthCertificate" />
                            <asp:BoundField DataField="CasteCertificate" HeaderText="CasteCertificate" SortExpression="CasteCertificate" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="Photo" HeaderText="Photo" SortExpression="Photo" />
                            <asp:BoundField DataField="Fee_Details" HeaderText="Fee_Details" SortExpression="Fee_Details" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [StdRegistation] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [StdRegistation] ([StudentId], [Date], [AdmissionNo], [AdmissionDate], [SchoolName], [StudentName], [AcadamicYear], [EnrollmentNo], [Gender], [Class], [Section], [DateofBirth], [EmailId], [FatherName], [MotherName], [ParentOccupation], [Nationality], [Religion], [Category], [State], [Country], [TemporaryAddress], [PermanentAddress], [ContactNo], [AlternateContactNo], [TransferCertificate], [StudyCertificate], [DateofBirthCertificate], [CasteCertificate], [Status], [Username], [Password], [Photo], [Fee_Details]) VALUES (@StudentId, @Date, @AdmissionNo, @AdmissionDate, @SchoolName, @StudentName, @AcadamicYear, @EnrollmentNo, @Gender, @Class, @Section, @DateofBirth, @EmailId, @FatherName, @MotherName, @ParentOccupation, @Nationality, @Religion, @Category, @State, @Country, @TemporaryAddress, @PermanentAddress, @ContactNo, @AlternateContactNo, @TransferCertificate, @StudyCertificate, @DateofBirthCertificate, @CasteCertificate, @Status, @Username, @Password, @Photo, @Fee_Details)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [StdRegistation]" UpdateCommand="UPDATE [StdRegistation] SET [StudentId] = @StudentId, [Date] = @Date, [AdmissionNo] = @AdmissionNo, [AdmissionDate] = @AdmissionDate, [SchoolName] = @SchoolName, [StudentName] = @StudentName, [AcadamicYear] = @AcadamicYear, [EnrollmentNo] = @EnrollmentNo, [Gender] = @Gender, [Class] = @Class, [Section] = @Section, [DateofBirth] = @DateofBirth, [EmailId] = @EmailId, [FatherName] = @FatherName, [MotherName] = @MotherName, [ParentOccupation] = @ParentOccupation, [Nationality] = @Nationality, [Religion] = @Religion, [Category] = @Category, [State] = @State, [Country] = @Country, [TemporaryAddress] = @TemporaryAddress, [PermanentAddress] = @PermanentAddress, [ContactNo] = @ContactNo, [AlternateContactNo] = @AlternateContactNo, [TransferCertificate] = @TransferCertificate, [StudyCertificate] = @StudyCertificate, [DateofBirthCertificate] = @DateofBirthCertificate, [CasteCertificate] = @CasteCertificate, [Status] = @Status, [Username] = @Username, [Password] = @Password, [Photo] = @Photo, [Fee_Details] = @Fee_Details WHERE [Id] = @original_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="StudentId" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="AdmissionNo" Type="String" />
                            <asp:Parameter Name="AdmissionDate" Type="String" />
                            <asp:Parameter Name="SchoolName" Type="String" />
                            <asp:Parameter Name="StudentName" Type="String" />
                            <asp:Parameter Name="AcadamicYear" Type="String" />
                            <asp:Parameter Name="EnrollmentNo" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Class" Type="String" />
                            <asp:Parameter Name="Section" Type="String" />
                            <asp:Parameter Name="DateofBirth" Type="String" />
                            <asp:Parameter Name="EmailId" Type="String" />
                            <asp:Parameter Name="FatherName" Type="String" />
                            <asp:Parameter Name="MotherName" Type="String" />
                            <asp:Parameter Name="ParentOccupation" Type="String" />
                            <asp:Parameter Name="Nationality" Type="String" />
                            <asp:Parameter Name="Religion" Type="String" />
                            <asp:Parameter Name="Category" Type="String" />
                            <asp:Parameter Name="State" Type="String" />
                            <asp:Parameter Name="Country" Type="String" />
                            <asp:Parameter Name="TemporaryAddress" Type="String" />
                            <asp:Parameter Name="PermanentAddress" Type="String" />
                            <asp:Parameter Name="ContactNo" Type="String" />
                            <asp:Parameter Name="AlternateContactNo" Type="String" />
                            <asp:Parameter Name="TransferCertificate" Type="String" />
                            <asp:Parameter Name="StudyCertificate" Type="String" />
                            <asp:Parameter Name="DateofBirthCertificate" Type="String" />
                            <asp:Parameter Name="CasteCertificate" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="Username" Type="String" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="Photo" Type="String" />
                            <asp:Parameter Name="Fee_Details" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="StudentId" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="AdmissionNo" Type="String" />
                            <asp:Parameter Name="AdmissionDate" Type="String" />
                            <asp:Parameter Name="SchoolName" Type="String" />
                            <asp:Parameter Name="StudentName" Type="String" />
                            <asp:Parameter Name="AcadamicYear" Type="String" />
                            <asp:Parameter Name="EnrollmentNo" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Class" Type="String" />
                            <asp:Parameter Name="Section" Type="String" />
                            <asp:Parameter Name="DateofBirth" Type="String" />
                            <asp:Parameter Name="EmailId" Type="String" />
                            <asp:Parameter Name="FatherName" Type="String" />
                            <asp:Parameter Name="MotherName" Type="String" />
                            <asp:Parameter Name="ParentOccupation" Type="String" />
                            <asp:Parameter Name="Nationality" Type="String" />
                            <asp:Parameter Name="Religion" Type="String" />
                            <asp:Parameter Name="Category" Type="String" />
                            <asp:Parameter Name="State" Type="String" />
                            <asp:Parameter Name="Country" Type="String" />
                            <asp:Parameter Name="TemporaryAddress" Type="String" />
                            <asp:Parameter Name="PermanentAddress" Type="String" />
                            <asp:Parameter Name="ContactNo" Type="String" />
                            <asp:Parameter Name="AlternateContactNo" Type="String" />
                            <asp:Parameter Name="TransferCertificate" Type="String" />
                            <asp:Parameter Name="StudyCertificate" Type="String" />
                            <asp:Parameter Name="DateofBirthCertificate" Type="String" />
                            <asp:Parameter Name="CasteCertificate" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="Username" Type="String" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="Photo" Type="String" />
                            <asp:Parameter Name="Fee_Details" Type="String" />
                            <asp:Parameter Name="original_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
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
