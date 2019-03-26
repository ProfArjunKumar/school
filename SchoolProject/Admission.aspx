<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Admission.aspx.cs" Inherits="SchoolProject.Admission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="main-panel">
        <div class="main-content">
            <div class="content-wrapper">
                <!-- Wizard Starts -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="content-header">ADMISSION</div>
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
                                                            <asp:Label runat="server" Text="Admission Id"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtId" class="form-control" />
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtId" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" Text=" Date"></asp:Label>
                                                            <asp:TextBox runat="server" ID="TextBox3" class="form-control" />
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TextBox3" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" Text="Name"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtProseg" class="form-control" />

                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtProseg" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" Text="Class"></asp:Label>
                                                            <asp:DropDownList ID="classname" CssClass="form-control" runat="server">
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
                                                            <asp:Label runat="server" Text="Date Of Birth"></asp:Label>
                                                            <asp:TextBox runat="server" TextMode="Date" ID="TextBox2" class="form-control" />
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TextBox2" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="LabelPron" Text="Gender"></asp:Label>
                                                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                                                <asp:ListItem Text="Select" />
                                                                <asp:ListItem Text="Male" />
                                                                <asp:ListItem Text="Female" />

                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" Text=" Father Name"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtProweig" class="form-control" />
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtProweig" ErrorMessage="Please Enter Field" />
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="Avbstoc" Text=" Contact Number"></asp:Label>
                                                            <asp:TextBox runat="server" class="form-control" ID="txtAvbstoc"></asp:TextBox>
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="txtAvbstoc" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" ID="Label1" Text=" Contact Address"></asp:Label>
                                                            <asp:TextBox runat="server" class="form-control" ID="Textbox1"></asp:TextBox>
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="Textbox1" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" Text="Fee Details"></asp:Label>
                                                            <asp:TextBox runat="server" ID="txtProcode" class="form-control" />
                                                        </div>
                                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="txtProcode" ErrorMessage="Please Enter Field" />
                                                    </div>
                                                    <div class="col-md-8" style="margin-left:261px;">
                                                        <div class="form-group">
                                                            <asp:Button ID="Button" align="center" class="gradient-button gradient-button-1" OnClick="Button_Click" Text="Submit" runat="server" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                              <div style="width:100%; height:250px; overflow:scroll">
                                                <asp:GridView ID="Gridview1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                                    <Columns>
                                                       
                                                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                                                        <asp:BoundField DataField="Admission_Id" HeaderText="Admission_Id" SortExpression="Admission_Id" />
                                                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                                                        <asp:BoundField DataField="Date_Of_Birth" HeaderText="Date_Of_Birth" SortExpression="Date_Of_Birth" />
                                                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                                        <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" SortExpression="Father_Name" />
                                                        <asp:BoundField DataField="Contact_Number" HeaderText="Contact_Number" SortExpression="Contact_Number" />
                                                        <asp:BoundField DataField="Contact_Address" HeaderText="Contact_Address" SortExpression="Contact_Address" />
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
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [Admission] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Admission] ([Admission_Id], [Date], [Name], [Class], [Date_Of_Birth], [Gender], [Father_Name], [Contact_Number], [Contact_Address], [Fee_Details]) VALUES (@Admission_Id, @Date, @Name, @Class, @Date_Of_Birth, @Gender, @Father_Name, @Contact_Number, @Contact_Address, @Fee_Details)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Admission]" UpdateCommand="UPDATE [Admission] SET [Admission_Id] = @Admission_Id, [Date] = @Date, [Name] = @Name, [Class] = @Class, [Date_Of_Birth] = @Date_Of_Birth, [Gender] = @Gender, [Father_Name] = @Father_Name, [Contact_Number] = @Contact_Number, [Contact_Address] = @Contact_Address, [Fee_Details] = @Fee_Details WHERE [Id] = @original_Id">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="original_Id" Type="Int32" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="Admission_Id" Type="String" />
                                                        <asp:Parameter Name="Date" Type="String" />
                                                        <asp:Parameter Name="Name" Type="String" />
                                                        <asp:Parameter Name="Class" Type="String" />
                                                        <asp:Parameter Name="Date_Of_Birth" Type="String" />
                                                        <asp:Parameter Name="Gender" Type="String" />
                                                        <asp:Parameter Name="Father_Name" Type="String" />
                                                        <asp:Parameter Name="Contact_Number" Type="String" />
                                                        <asp:Parameter Name="Contact_Address" Type="String" />
                                                        <asp:Parameter Name="Fee_Details" Type="String" />
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="Admission_Id" Type="String" />
                                                        <asp:Parameter Name="Date" Type="String" />
                                                        <asp:Parameter Name="Name" Type="String" />
                                                        <asp:Parameter Name="Class" Type="String" />
                                                        <asp:Parameter Name="Date_Of_Birth" Type="String" />
                                                        <asp:Parameter Name="Gender" Type="String" />
                                                        <asp:Parameter Name="Father_Name" Type="String" />
                                                        <asp:Parameter Name="Contact_Number" Type="String" />
                                                        <asp:Parameter Name="Contact_Address" Type="String" />
                                                        <asp:Parameter Name="Fee_Details" Type="String" />
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
