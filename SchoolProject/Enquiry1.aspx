<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Enquiry1.aspx.cs" Inherits="SchoolProject.Enquiry1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <div class="main-content">
            <div class="content-wrapper">
                <!-- Wizard Starts -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="content-header">ENQUIRY FORM</div>
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
                                                        <asp:Label runat="server" Text=" Person Id"></asp:Label>
                                                        <asp:TextBox runat="server" ID="TextBox1" class="form-control" />
                                                    </div>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="Please Enter Field" />
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="  Date"></asp:Label>
                                                        <asp:TextBox runat="server" ID="TextBox2" class="form-control" />
                                                    </div>
                                                    <%--<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TextBox2" ErrorMessage="Please Enter Field" />--%>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="First Name"></asp:Label>
                                                        <asp:TextBox runat="server" ID="txtId" class="form-control" />
                                                    </div>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtId" ErrorMessage="Please Enter Field" />
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Last Name"></asp:Label>
                                                        <asp:TextBox runat="server" ID="txtProseg" class="form-control" />

                                                    </div>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="txtProseg" ErrorMessage="Please Enter Field" />
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text="Reason"></asp:Label>
                                                        <asp:TextBox runat="server" ID="txtFuel" class="form-control" />
                                                        <asp:TextBox runat="server" ID="txtProweig" class="form-control" Visible="false" />
                                                    </div>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtFuel" ErrorMessage="Please Enter Field" />
                                                </div>
                                                <%--<div class="col-md-6">--%>
                                                    <%--<div class="form-group">--%>
                                                    <%--<asp:label runat="server" Text="Time Of Arriving"></asp:label>--%>
                                                    <%--<asp:TextBox runat="server" ID="txtProweig" class="form-control" Visible="false"/>--%>
                                                    <%--</div>--%>
                                               <%-- </div>--%>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" Text=" Contact Number"></asp:Label>
                                                        <asp:TextBox runat="server" ID="txtProcode" class="form-control" />
                                                    </div>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtProcode" ErrorMessage="Please Enter Field" />
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <asp:Label runat="server" ID="LabelPron" Text="Address "></asp:Label>
                                                        <asp:TextBox runat="server" class="form-control" ID="txtProdis"></asp:TextBox>
                                                    </div>
                                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="txtProdis" ErrorMessage="Please Enter Field" />
                                                </div>


                                                <div class="col-md-8" style="margin-left: 261px;">
                                                    <div class="form-group">
                                                        <asp:Button ID="Button" align="center" class="gradient-button gradient-button-1" OnClick="Button_Click" Text="Submit" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <div style="overflow: scroll">
                                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellSpacing="2">
                                                <Columns>

                                                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                                                    <asp:BoundField DataField="PersionId" HeaderText="PersionId" SortExpression="PersionId" />
                                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                    <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                                                    <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                                                    <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
                                                    <asp:BoundField DataField="Time_Of_Arriving" HeaderText="Time_Of_Arriving" SortExpression="Time_Of_Arriving" />
                                                    <asp:BoundField DataField="Contact_Number" HeaderText="Contact_Number" SortExpression="Contact_Number" />
                                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
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
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString %>" DeleteCommand="DELETE FROM [Enquiry] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Enquiry] ([PersionId], [Date], [First_Name], [Last_Name], [Reason], [Time_Of_Arriving], [Contact_Number], [Address]) VALUES (@PersionId, @Date, @First_Name, @Last_Name, @Reason, @Time_Of_Arriving, @Contact_Number, @Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Enquiry]" UpdateCommand="UPDATE [Enquiry] SET [PersionId] = @PersionId, [Date] = @Date, [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Reason] = @Reason, [Time_Of_Arriving] = @Time_Of_Arriving, [Contact_Number] = @Contact_Number, [Address] = @Address WHERE [Id] = @original_Id">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_Id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="PersionId" Type="String" />
                                                    <asp:Parameter Name="Date" Type="String" />
                                                    <asp:Parameter Name="First_Name" Type="String" />
                                                    <asp:Parameter Name="Last_Name" Type="String" />
                                                    <asp:Parameter Name="Reason" Type="String" />
                                                    <asp:Parameter Name="Time_Of_Arriving" Type="String" />
                                                    <asp:Parameter Name="Contact_Number" Type="String" />
                                                    <asp:Parameter Name="Address" Type="String" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="PersionId" Type="String" />
                                                    <asp:Parameter Name="Date" Type="String" />
                                                    <asp:Parameter Name="First_Name" Type="String" />
                                                    <asp:Parameter Name="Last_Name" Type="String" />
                                                    <asp:Parameter Name="Reason" Type="String" />
                                                    <asp:Parameter Name="Time_Of_Arriving" Type="String" />
                                                    <asp:Parameter Name="Contact_Number" Type="String" />
                                                    <asp:Parameter Name="Address" Type="String" />
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
