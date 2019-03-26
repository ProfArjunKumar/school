<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Exam_schedule.aspx.cs" Inherits="SchoolProject.Exam_schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">EXAM SCHEDULE </div>
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
                      <asp:label runat="server" Text="ExamId"></asp:label>
                        <asp:TextBox runat="server" ID="TxtId" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TxtId" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                      <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="TxtDate" class="form-control"/>
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TxtDate" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Exam Title"></asp:label>
                      <asp:DropDownList ID="Exam" class="form-control" runat="server">
                          <asp:ListItem Text="Select" />
                          <asp:ListItem Text="Weekly Test" />
                          <asp:ListItem Text="Unit Test" />
                          <asp:ListItem Text="Quarterly" />
                          <asp:ListItem Text="Half-Yearly" />
                          <asp:ListItem Text="Annualarly" />
                      </asp:DropDownList>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="Exam" ErrorMessage="Please Enter Field" InitialValue="Select" />
                      </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                       <asp:DropDownList ID="dd"  CssClass="form-control" runat="server">
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
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="dd" ErrorMessage="Please Enter Field" InitialValue="Select Class" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Exam Date"></asp:label>
                        <asp:TextBox runat="server" ID="TxtFDate" TextMode="Date" class="form-control"/>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TxtFDate" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <%--<div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="To Date"></asp:label>
                        <asp:TextBox runat="server" ID="TxtTDate" TextMode="Date" class="form-control"/>
                    </div>
                  </div>--%>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Shift"></asp:label>
                      <asp:DropDownList ID="section"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Shift " />
                                <asp:ListItem Text="A" />
                                <asp:ListItem Text="B" />
                           </asp:DropDownList>
                       <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="section" ErrorMessage="Please Enter Field" InitialValue="Select Shift" />
                        </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Subject Name"></asp:label>
                         <asp:DropDownList ID="dd1"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Subject" />
                                <asp:ListItem Text="English" />
                                <asp:ListItem Text="Social" />
                                <asp:ListItem Text="Science" />
                                <asp:ListItem Text="Computer Science" />
                                <asp:ListItem Text="Hindi" />
                                <asp:ListItem Text="Telugu" />
                                <asp:ListItem Text="Sanskrit" />
                                <asp:ListItem Text="Urdu" />
                                <asp:ListItem Text="Drawing" />
                                <asp:ListItem Text="Maths" />
                                <asp:ListItem Text="General Knowledge" />
                           </asp:DropDownList>
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="dd1" ErrorMessage="Please Enter Field"  InitialValue="Select Subject"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Cutoff Marks"></asp:label>
                        <asp:TextBox runat="server" ID="TxtMaxMarks" class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="TxtMaxMarks" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Start Time"></asp:label>
                        <asp:TextBox runat="server" ID="TxtStartTime" TextMode="Time"  class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="TxtStartTime" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text=" End Time"></asp:label>
                        <asp:TextBox runat="server" ID="TxtEndTime" TextMode="Time" class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="TxtEndTime" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <div class="row">
                    <div class="col-sm-6" style="margin-left: 300px">
                        <div class="form-group">
                            <asp:Button ID="btnadd"  Style="color:#ffffff;" align="center" class="form-control  col-sm-8 gradient-button gradient-button-1" Text="Add" CssClass="btn btn-success col-sm-4" runat="server" OnClick="btnadd_Click" />
                        </div>
                    </div>
                    </div>
                    <asp:GridView ID="gvradd" width="50px" runat="server" AutoGenerateDeleteButton="True" OnRowDeleting="gvradd_RowDeleting" ></asp:GridView>
                    
                   <div class="col-md-8" style="margin-left:261px;width: 107px;height: 40px;">
                    <div class="form-group">
                        <asp:Button ID="Button" Style="color:#ffffff;" align="center" class="form-control  col-sm-8 gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button_Click1" />
                    </div>
                  </div>
                </div>
              </fieldset>
               <br />
                <div style="overflow:scroll">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1223px">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="ExamId" HeaderText="ExamId" SortExpression="ExamId" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Exam_Name" HeaderText="Exam_Title" SortExpression="Exam_Name" />
                            <asp:BoundField DataField="Cls" HeaderText="Class" SortExpression="Cls" />
                            <asp:BoundField DataField="FromDate" HeaderText="FromDate" SortExpression="FromDate" />
                            <asp:BoundField DataField="Starttime" HeaderText="Starttime" SortExpression="Starttime" />
                            <asp:BoundField DataField="Endtime" HeaderText="Endtime" SortExpression="Endtime" />
                            <asp:BoundField DataField="Cutoffmarks" HeaderText="Cutoffmarks" SortExpression="Cutoffmarks" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" DeleteCommand="DELETE FROM [ExamSchedule_tbl] WHERE [Id] = @original_Id AND (([ExamId] = @original_ExamId) OR ([ExamId] IS NULL AND @original_ExamId IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Exam_Name] = @original_Exam_Name) OR ([Exam_Name] IS NULL AND @original_Exam_Name IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([FromDate] = @original_FromDate) OR ([FromDate] IS NULL AND @original_FromDate IS NULL)) AND (([ToDate] = @original_ToDate) OR ([ToDate] IS NULL AND @original_ToDate IS NULL))" InsertCommand="INSERT INTO [ExamSchedule_tbl] ([ExamId], [Date], [Exam_Name], [Class], [FromDate], [ToDate]) VALUES (@ExamId, @Date, @Exam_Name, @Class, @FromDate, @ToDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ExamSchedule_tbl]" UpdateCommand="UPDATE [ExamSchedule_tbl] SET [ExamId] = @ExamId, [Date] = @Date, [Exam_Name] = @Exam_Name, [Class] = @Class, [FromDate] = @FromDate, [ToDate] = @ToDate WHERE [Id] = @original_Id AND (([ExamId] = @original_ExamId) OR ([ExamId] IS NULL AND @original_ExamId IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Exam_Name] = @original_Exam_Name) OR ([Exam_Name] IS NULL AND @original_Exam_Name IS NULL)) AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([FromDate] = @original_FromDate) OR ([FromDate] IS NULL AND @original_FromDate IS NULL)) AND (([ToDate] = @original_ToDate) OR ([ToDate] IS NULL AND @original_ToDate IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id" Type="Int32" />
                            <asp:Parameter Name="original_ExamId" Type="String" />
                            <asp:Parameter Name="original_Date" Type="String" />
                            <asp:Parameter Name="original_Exam_Name" Type="String" />
                            <asp:Parameter Name="original_Cls" Type="String" />
                            <asp:Parameter Name="original_FromDate" Type="String" />
                           <asp:Parameter Name="original_Starttime" Type="String" />
                            <asp:Parameter Name="original_Endtime" Type="String" />
                            <asp:Parameter Name="original_Cutoffmarks" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ExamId" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Exam_Name" Type="String" />
                            <asp:Parameter Name="Cls" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="Starttime" Type="String" />
                            <asp:Parameter Name="Endtime" Type="String" />
                            <asp:Parameter Name="Cutoffmarks" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ExamId" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Exam_Name" Type="String" />
                            <asp:Parameter Name="Cls" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="Starttime" Type="String" />
                            <asp:Parameter Name="Endtime" Type="String" />
                            <asp:Parameter Name="Cutoffmarks" Type="String" />
                            <asp:Parameter Name="original_Id" Type="Int32" />
                            <asp:Parameter Name="original_ExamId" Type="String" />
                            <asp:Parameter Name="original_Date" Type="String" />
                            <asp:Parameter Name="original_Exam_Name" Type="String" />
                            <asp:Parameter Name="original_Cls" Type="String" />
                            <asp:Parameter Name="original_FromDate" Type="String" />
                            <asp:Parameter Name="original_Starttime" Type="String" />
                            <asp:Parameter Name="original_Endtime" Type="String" />
                            <asp:Parameter Name="original_Cutoffmarks" Type="String" />
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

