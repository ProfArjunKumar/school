<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="testingpage.aspx.cs" Inherits="SchoolProject.testingpage" %>
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
                      <asp:label runat="server" ID="LabAdmsId" Text="Admission No"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAdmsNo" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabAdmsDate" Text="Admission Date"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAdmsDate" TextMode="Date" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabSclName" Text="School Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtSclName" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabStdName" Text="Student Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtStdName" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Acadamic Year"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAcdYear" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabERollNo" Text="Enrollment No"></asp:label>
                        <asp:TextBox runat="server" ID="TxtRollNo" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabGender" Text="Gender"></asp:label>
                         <asp:DropDownList ID="DDGender" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Gender" />
                                <asp:ListItem Text="MALE" />
                                <asp:ListItem Text="FEMALE" />
                                <asp:ListItem Text="OTHER" />
                           </asp:DropDownList>
                      </div>
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabClass" Text="Class"></asp:label>
                        <asp:DropDownList ID="DDClass"  CssClass="form-control" runat="server">
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
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabSection" Text="Section"></asp:label>
                       <asp:DropDownList ID="DDSection" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Section" />
                                <asp:ListItem Text="A" />
                                <asp:ListItem Text="B" />
                                <asp:ListItem Text="C" />
                                <asp:ListItem Text="D" />
                                <asp:ListItem Text="E" />
                           </asp:DropDownList>
                      </div>
                    </div>
                    
                   
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabDob" Text="Date of Birth"></asp:label>
                        <asp:TextBox runat="server" ID="TxtDob" TextMode="Date" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabEmail" Text="Email Id"></asp:label>
                        <asp:TextBox runat="server" ID="TxtEmail" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabFatherName" Text="Father Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtFatherName"  class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabMotherName" Text="Mother Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtMotherName"  class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabFatherOcc" Text="Parent Occupation"></asp:label>
                        <asp:TextBox runat="server" ID="TxtFtrOcc" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabNationality" Text="Nationality"></asp:label>
                        <asp:TextBox runat="server" ID="TxtNationality" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabReligion" Text="Religion"></asp:label>
                        <asp:TextBox runat="server" ID="TxtReligion" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabCategory" Text="Category"></asp:label>
                        <asp:TextBox runat="server" ID="TxtCategory" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabState" Text="State"></asp:label>
                        <asp:TextBox runat="server" ID="TxtState" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabCountry" Text="Country"></asp:label>
                        <asp:TextBox runat="server" ID="TxtCountry" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabTempAddress" Text="Temporary Address"></asp:label>
                        <asp:TextBox runat="server" ID="TxtTemAdd" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabPerAdd" Text="Permanent Address"></asp:label>
                        <asp:TextBox runat="server" ID="TxtPerAdd" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabCountact" Text="Contact No"></asp:label>
                        <asp:TextBox runat="server" ID="TxtCountact" TextMode="Number" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabAltNo" Text="Alternate Contact No"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAltNo" TextMode="Number" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="LabTc" Text="Transfer Certificate" runat="server" />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                    </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="LabSC" Text="Study Certificate " runat="server" />
                        <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" />
                        <br />
                    </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="LabDOBC" Text="Date of Birth Certificate" runat="server" />
                        <asp:FileUpload ID="FileUpload3" runat="server" AllowMultiple="true" />
                        <br />
                    </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="LabCC" Text="Caste Certificate" runat="server" />
                        <asp:FileUpload ID="FileUpload4" runat="server" AllowMultiple="true" />
                        <br />
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
                      </div>
                    </div>
                 <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="form-control  col-sm-4" Text="Submit" runat="server" OnClick="Button_Click" />
                    </div>
                  </div>
                     <asp:Label ID="msg" runat="server" />
                </div>
              </fieldset>
                <div style="overflow:scroll">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
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
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [StdRegistation] WHERE [StdId] = @original_StdId AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([AdmissionNo] = @original_AdmissionNo) OR ([AdmissionNo] IS NULL AND @original_AdmissionNo IS NULL)) AND (([AdmissionDate] = @original_AdmissionDate) OR ([AdmissionDate] IS NULL AND @original_AdmissionDate IS NULL)) AND (([SchoolName] = @original_SchoolName) OR ([SchoolName] IS NULL AND @original_SchoolName IS NULL)) AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([AcadamicYear] = @original_AcadamicYear) OR ([AcadamicYear] IS NULL AND @original_AcadamicYear IS NULL)) AND (([EnrollmentNo] = @original_EnrollmentNo) OR ([EnrollmentNo] IS NULL AND @original_EnrollmentNo IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Section] = @original_Section) OR ([Section] IS NULL AND @original_Section IS NULL)) AND (([DateofBirth] = @original_DateofBirth) OR ([DateofBirth] IS NULL AND @original_DateofBirth IS NULL)) AND (([EmailId] = @original_EmailId) OR ([EmailId] IS NULL AND @original_EmailId IS NULL)) AND (([FatherName] = @original_FatherName) OR ([FatherName] IS NULL AND @original_FatherName IS NULL)) AND (([MotherName] = @original_MotherName) OR ([MotherName] IS NULL AND @original_MotherName IS NULL)) AND (([ParentOccupation] = @original_ParentOccupation) OR ([ParentOccupation] IS NULL AND @original_ParentOccupation IS NULL)) AND (([Nationality] = @original_Nationality) OR ([Nationality] IS NULL AND @original_Nationality IS NULL)) AND (([Religion] = @original_Religion) OR ([Religion] IS NULL AND @original_Religion IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL)) AND (([TemporaryAddress] = @original_TemporaryAddress) OR ([TemporaryAddress] IS NULL AND @original_TemporaryAddress IS NULL)) AND (([PermanentAddress] = @original_PermanentAddress) OR ([PermanentAddress] IS NULL AND @original_PermanentAddress IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([AlternateContactNo] = @original_AlternateContactNo) OR ([AlternateContactNo] IS NULL AND @original_AlternateContactNo IS NULL)) AND (([TransferCertificate] = @original_TransferCertificate) OR ([TransferCertificate] IS NULL AND @original_TransferCertificate IS NULL)) AND (([StudyCertificate] = @original_StudyCertificate) OR ([StudyCertificate] IS NULL AND @original_StudyCertificate IS NULL)) AND (([DateofBirthCertificate] = @original_DateofBirthCertificate) OR ([DateofBirthCertificate] IS NULL AND @original_DateofBirthCertificate IS NULL)) AND (([CasteCertificate] = @original_CasteCertificate) OR ([CasteCertificate] IS NULL AND @original_CasteCertificate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [StdRegistation] ([StdId], [Date], [AdmissionNo], [AdmissionDate], [SchoolName], [StudentName], [AcadamicYear], [EnrollmentNo], [Gender], [Class], [Section], [DateofBirth], [EmailId], [FatherName], [MotherName], [ParentOccupation], [Nationality], [Religion], [Category], [State], [Country], [TemporaryAddress], [PermanentAddress], [ContactNo], [AlternateContactNo], [TransferCertificate], [StudyCertificate], [DateofBirthCertificate], [CasteCertificate], [Status]) VALUES (@StdId, @Date, @AdmissionNo, @AdmissionDate, @SchoolName, @StudentName, @AcadamicYear, @EnrollmentNo, @Gender, @Class, @Section, @DateofBirth, @EmailId, @FatherName, @MotherName, @ParentOccupation, @Nationality, @Religion, @Category, @State, @Country, @TemporaryAddress, @PermanentAddress, @ContactNo, @AlternateContactNo, @TransferCertificate, @StudyCertificate, @DateofBirthCertificate, @CasteCertificate, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [StdRegistation]" UpdateCommand="UPDATE [StdRegistation] SET [Date] = @Date, [AdmissionNo] = @AdmissionNo, [AdmissionDate] = @AdmissionDate, [SchoolName] = @SchoolName, [StudentName] = @StudentName, [AcadamicYear] = @AcadamicYear, [EnrollmentNo] = @EnrollmentNo, [Gender] = @Gender, [Class] = @Class, [Section] = @Section, [DateofBirth] = @DateofBirth, [EmailId] = @EmailId, [FatherName] = @FatherName, [MotherName] = @MotherName, [ParentOccupation] = @ParentOccupation, [Nationality] = @Nationality, [Religion] = @Religion, [Category] = @Category, [State] = @State, [Country] = @Country, [TemporaryAddress] = @TemporaryAddress, [PermanentAddress] = @PermanentAddress, [ContactNo] = @ContactNo, [AlternateContactNo] = @AlternateContactNo, [TransferCertificate] = @TransferCertificate, [StudyCertificate] = @StudyCertificate, [DateofBirthCertificate] = @DateofBirthCertificate, [CasteCertificate] = @CasteCertificate, [Status] = @Status WHERE [StdId] = @original_StdId AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([AdmissionNo] = @original_AdmissionNo) OR ([AdmissionNo] IS NULL AND @original_AdmissionNo IS NULL)) AND (([AdmissionDate] = @original_AdmissionDate) OR ([AdmissionDate] IS NULL AND @original_AdmissionDate IS NULL)) AND (([SchoolName] = @original_SchoolName) OR ([SchoolName] IS NULL AND @original_SchoolName IS NULL)) AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([AcadamicYear] = @original_AcadamicYear) OR ([AcadamicYear] IS NULL AND @original_AcadamicYear IS NULL)) AND (([EnrollmentNo] = @original_EnrollmentNo) OR ([EnrollmentNo] IS NULL AND @original_EnrollmentNo IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Section] = @original_Section) OR ([Section] IS NULL AND @original_Section IS NULL)) AND (([DateofBirth] = @original_DateofBirth) OR ([DateofBirth] IS NULL AND @original_DateofBirth IS NULL)) AND (([EmailId] = @original_EmailId) OR ([EmailId] IS NULL AND @original_EmailId IS NULL)) AND (([FatherName] = @original_FatherName) OR ([FatherName] IS NULL AND @original_FatherName IS NULL)) AND (([MotherName] = @original_MotherName) OR ([MotherName] IS NULL AND @original_MotherName IS NULL)) AND (([ParentOccupation] = @original_ParentOccupation) OR ([ParentOccupation] IS NULL AND @original_ParentOccupation IS NULL)) AND (([Nationality] = @original_Nationality) OR ([Nationality] IS NULL AND @original_Nationality IS NULL)) AND (([Religion] = @original_Religion) OR ([Religion] IS NULL AND @original_Religion IS NULL)) AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL)) AND (([TemporaryAddress] = @original_TemporaryAddress) OR ([TemporaryAddress] IS NULL AND @original_TemporaryAddress IS NULL)) AND (([PermanentAddress] = @original_PermanentAddress) OR ([PermanentAddress] IS NULL AND @original_PermanentAddress IS NULL)) AND (([ContactNo] = @original_ContactNo) OR ([ContactNo] IS NULL AND @original_ContactNo IS NULL)) AND (([AlternateContactNo] = @original_AlternateContactNo) OR ([AlternateContactNo] IS NULL AND @original_AlternateContactNo IS NULL)) AND (([TransferCertificate] = @original_TransferCertificate) OR ([TransferCertificate] IS NULL AND @original_TransferCertificate IS NULL)) AND (([StudyCertificate] = @original_StudyCertificate) OR ([StudyCertificate] IS NULL AND @original_StudyCertificate IS NULL)) AND (([DateofBirthCertificate] = @original_DateofBirthCertificate) OR ([DateofBirthCertificate] IS NULL AND @original_DateofBirthCertificate IS NULL)) AND (([CasteCertificate] = @original_CasteCertificate) OR ([CasteCertificate] IS NULL AND @original_CasteCertificate IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_StudentId" Type="Int32" />
                            <asp:Parameter Name="original_Date" Type="String" />
                            <asp:Parameter Name="original_AdmissionNo" Type="String" />
                            <asp:Parameter Name="original_AdmissionDate" Type="String" />
                            <asp:Parameter Name="original_SchoolName" Type="String" />
                            <asp:Parameter Name="original_StudentName" Type="String" />
                            <asp:Parameter Name="original_AcadamicYear" Type="String" />
                            <asp:Parameter Name="original_EnrollmentNo" Type="String" />
                            <asp:Parameter Name="original_Gender" Type="String" />
                            <asp:Parameter Name="original_Class" Type="String" />
                            <asp:Parameter Name="original_Section" Type="String" />
                            <asp:Parameter Name="original_DateofBirth" Type="String" />
                            <asp:Parameter Name="original_EmailId" Type="String" />
                            <asp:Parameter Name="original_FatherName" Type="String" />
                            <asp:Parameter Name="original_MotherName" Type="String" />
                            <asp:Parameter Name="original_ParentOccupation" Type="String" />
                            <asp:Parameter Name="original_Nationality" Type="String" />
                            <asp:Parameter Name="original_Religion" Type="String" />
                            <asp:Parameter Name="original_Category" Type="String" />
                            <asp:Parameter Name="original_State" Type="String" />
                            <asp:Parameter Name="original_Country" Type="String" />
                            <asp:Parameter Name="original_TemporaryAddress" Type="String" />
                            <asp:Parameter Name="original_PermanentAddress" Type="String" />
                            <asp:Parameter Name="original_ContactNo" Type="String" />
                            <asp:Parameter Name="original_AlternateContactNo" Type="String" />
                            <asp:Parameter Name="original_TransferCertificate" Type="String" />
                            <asp:Parameter Name="original_StudyCertificate" Type="String" />
                            <asp:Parameter Name="original_DateofBirthCertificate" Type="String" />
                            <asp:Parameter Name="original_CasteCertificate" Type="String" />
                            <asp:Parameter Name="original_Status" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="StudentId" Type="Int32" />
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
                        </InsertParameters>
                        <UpdateParameters>
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
                            <asp:Parameter Name="original_StudentId" Type="Int32" />
                            <asp:Parameter Name="original_Date" Type="String" />
                            <asp:Parameter Name="original_AdmissionNo" Type="String" />
                            <asp:Parameter Name="original_AdmissionDate" Type="String" />
                            <asp:Parameter Name="original_SchoolName" Type="String" />
                            <asp:Parameter Name="original_StudentName" Type="String" />
                            <asp:Parameter Name="original_AcadamicYear" Type="String" />
                            <asp:Parameter Name="original_EnrollmentNo" Type="String" />
                            <asp:Parameter Name="original_Gender" Type="String" />
                            <asp:Parameter Name="original_Class" Type="String" />
                            <asp:Parameter Name="original_Section" Type="String" />
                            <asp:Parameter Name="original_DateofBirth" Type="String" />
                            <asp:Parameter Name="original_EmailId" Type="String" />
                            <asp:Parameter Name="original_FatherName" Type="String" />
                            <asp:Parameter Name="original_MotherName" Type="String" />
                            <asp:Parameter Name="original_ParentOccupation" Type="String" />
                            <asp:Parameter Name="original_Nationality" Type="String" />
                            <asp:Parameter Name="original_Religion" Type="String" />
                            <asp:Parameter Name="original_Category" Type="String" />
                            <asp:Parameter Name="original_State" Type="String" />
                            <asp:Parameter Name="original_Country" Type="String" />
                            <asp:Parameter Name="original_TemporaryAddress" Type="String" />
                            <asp:Parameter Name="original_PermanentAddress" Type="String" />
                            <asp:Parameter Name="original_ContactNo" Type="String" />
                            <asp:Parameter Name="original_AlternateContactNo" Type="String" />
                            <asp:Parameter Name="original_TransferCertificate" Type="String" />
                            <asp:Parameter Name="original_StudyCertificate" Type="String" />
                            <asp:Parameter Name="original_DateofBirthCertificate" Type="String" />
                            <asp:Parameter Name="original_CasteCertificate" Type="String" />
                            <asp:Parameter Name="original_Status" Type="String" />
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
