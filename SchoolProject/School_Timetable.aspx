<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="School_Timetable.aspx.cs" Inherits="SchoolProject.School_Timetable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="main-panel">
        <div class="main-content">
            <div class="content-wrapper">
                <!-- Wizard Starts -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="content-header">SCHOOL TIME-TABLE </div>
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
                                                        <asp:Label runat="server" Text="SchoolTime Id "></asp:Label>
                                                        <asp:TextBox runat="server" ID="TextBox7" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Date "></asp:Label>
                                                        <asp:TextBox runat="server" ID="TextBox1" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Day"></asp:Label>
                                                        <asp:DropDownList ID="dd3" class="form-control" runat="server">
                                                            <asp:ListItem Text="Select" />
                                                            <asp:ListItem Text="Monday" />
                                                            <asp:ListItem Text="Tuesday" />
                                                            <asp:ListItem Text="wednesday" />
                                                            <asp:ListItem Text="Thursday" />
                                                            <asp:ListItem Text="Friday" />
                                                            <asp:ListItem Text="Saturday" />
                                                            <asp:ListItem Text="Sunday" />
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="School Start Time"></asp:Label>
                                                        <asp:TextBox runat="server" ID="txtstart" class="form-control" />
                                                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtstart" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Period no"></asp:Label>
                                                        <asp:TextBox runat="server" ID="txtperiod" class="form-control" />
                                                          <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtperiod" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Class"></asp:Label>
                                                        <asp:DropDownList ID="dd" CssClass="form-control" runat="server">
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
                                                        <asp:Label runat="server" Text="Subject Name"></asp:Label>
                                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Section"></asp:Label>
                                                        <asp:DropDownList ID="dd1" CssClass="form-control" runat="server">
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
                                                        <asp:Label runat="server" Text="Start Time"></asp:Label>
                                                        <asp:TextBox runat="server" ID="TextBox2" class="form-control" />
                                                    </div>
                                                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TextBox2" ErrorMessage="Please Enter Field" />
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="End Time"></asp:Label>
                                                        <asp:TextBox runat="server" ID="TextBox3" class="form-control" />
                                                    </div>
                                                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TextBox3" ErrorMessage="Please Enter Field" />
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Break time"></asp:Label>
                                                        <asp:TextBox runat="server" ID="TextBox4" class="form-control" />
                                                    </div>
                                                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TextBox4" ErrorMessage="Please Enter Field" />
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Lunch Time"></asp:Label>
                                                        <asp:TextBox runat="server" ID="TextBox5" class="form-control" />

                                                    </div>
                                                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="TextBox5" ErrorMessage="Please Enter Field" />
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Academic Year"></asp:Label>
                                                        <asp:TextBox runat="server" ID="TextBox6" class="form-control" />
                                                    </div>
                                                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="TextBox6" ErrorMessage="Please Enter Field" />
                                                </div>
                                                <div class="col-md-8" style="margin-left: 261px; width: 107px; height: 40px;">
                                                    <div class="form-group">
                                                        <asp:Button ID="Button" Style="color: #ffffff;" align="center" class="form-control  col-sm-8 gradient-button gradient-button-1" Text="Submit" OnClick="Button_Click" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <br />
                                        <div class="overflow-scroll">
                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="231px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                <Columns>
                                                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                                                    <asp:BoundField DataField="TimeTableId" HeaderText="TimeTableId" SortExpression="TimeTableId" />
                                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                    <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                                                    <asp:BoundField DataField="School_StartTime" HeaderText="School_StartTime" SortExpression="School_StartTime" />
                                                    <asp:BoundField DataField="PeriodNo" HeaderText="PeriodNo" SortExpression="PeriodNo" />
                                                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                                                    <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" SortExpression="SubjectName" />
                                                    <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                                                    <asp:BoundField DataField="SubStart_Time" HeaderText="SubStart_Time" SortExpression="SubStart_Time" />
                                                    <asp:BoundField DataField="SubEnd_Time" HeaderText="SubEnd_Time" SortExpression="SubEnd_Time" />
                                                    <asp:BoundField DataField="Break_Time" HeaderText="Break_Time" SortExpression="Break_Time" />
                                                    <asp:BoundField DataField="Lunch_Time" HeaderText="Lunch_Time" SortExpression="Lunch_Time" />
                                                    <asp:BoundField DataField="Academic_Year" HeaderText="Academic_Year" SortExpression="Academic_Year" />
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
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [School_TimeTbl] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [School_TimeTbl] ([TimeTableId], [Date], [Day], [School_StartTime], [PeriodNo], [Class], [SubjectName], [Section], [SubStart_Time], [SubEnd_Time], [Break_Time], [Lunch_Time], [Academic_Year]) VALUES (@TimeTableId, @Date, @Day, @School_StartTime, @PeriodNo, @Class, @SubjectName, @Section, @SubStart_Time, @SubEnd_Time, @Break_Time, @Lunch_Time, @Academic_Year)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [School_TimeTbl]" UpdateCommand="UPDATE [School_TimeTbl] SET [TimeTableId] = @TimeTableId, [Date] = @Date, [Day] = @Day, [School_StartTime] = @School_StartTime, [PeriodNo] = @PeriodNo, [Class] = @Class, [SubjectName] = @SubjectName, [Section] = @Section, [SubStart_Time] = @SubStart_Time, [SubEnd_Time] = @SubEnd_Time, [Break_Time] = @Break_Time, [Lunch_Time] = @Lunch_Time, [Academic_Year] = @Academic_Year WHERE [Id] = @original_Id">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_Id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="TimeTableId" Type="String" />
                                                    <asp:Parameter Name="Date" Type="String" />
                                                    <asp:Parameter Name="Day" Type="String" />
                                                    <asp:Parameter Name="School_StartTime" Type="String" />
                                                    <asp:Parameter Name="PeriodNo" Type="String" />
                                                    <asp:Parameter Name="Class" Type="String" />
                                                    <asp:Parameter Name="SubjectName" Type="String" />
                                                    <asp:Parameter Name="Section" Type="String" />
                                                    <asp:Parameter Name="SubStart_Time" Type="String" />
                                                    <asp:Parameter Name="SubEnd_Time" Type="String" />
                                                    <asp:Parameter Name="Break_Time" Type="String" />
                                                    <asp:Parameter Name="Lunch_Time" Type="String" />
                                                    <asp:Parameter Name="Academic_Year" Type="String" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="TimeTableId" Type="String" />
                                                    <asp:Parameter Name="Date" Type="String" />
                                                    <asp:Parameter Name="Day" Type="String" />
                                                    <asp:Parameter Name="School_StartTime" Type="String" />
                                                    <asp:Parameter Name="PeriodNo" Type="String" />
                                                    <asp:Parameter Name="Class" Type="String" />
                                                    <asp:Parameter Name="SubjectName" Type="String" />
                                                    <asp:Parameter Name="Section" Type="String" />
                                                    <asp:Parameter Name="SubStart_Time" Type="String" />
                                                    <asp:Parameter Name="SubEnd_Time" Type="String" />
                                                    <asp:Parameter Name="Break_Time" Type="String" />
                                                    <asp:Parameter Name="Lunch_Time" Type="String" />
                                                    <asp:Parameter Name="Academic_Year" Type="String" />
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

</asp:Content>
