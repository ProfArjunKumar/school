<%@ Page Title="" Language="C#" MasterPageFile="~/Accountant.Master" AutoEventWireup="true" CodeBehind="Feemaster.aspx.cs" Inherits="SchoolProject.Feemaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">FEE DETAILS</div>
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
                      <asp:label runat="server" Text="Fee Id"></asp:label>
                        <asp:TextBox runat="server" ID="txtId" class="form-control"/>
                      
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtId" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="txtdate" class="form-control"/>
                      
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtdate" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Student Id"></asp:label>
                        <asp:DropDownList ID="DDstudent" class="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DDstudent_SelectedIndexChanged"></asp:DropDownList>
                      
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="DDstudent" ErrorMessage="Please Enter Field" InitialValue="-1" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Admission No"></asp:label>
                         <asp:TextBox runat="server" ID="Txtadmno" class="form-control" />
                      
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="Txtadmno" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Student Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtStdName" class="form-control"/>
                      
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="txtStdName" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                      <asp:TextBox runat="server" ID="Txtclass" class="form-control"/>
                      
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="Txtclass" ErrorMessage="Please Enter Field" />
                       <%-- <asp:DropDownList ID="dd"  CssClass="form-control" runat="server">
                               
                           </asp:DropDownList>--%>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Section"></asp:label>
                      <%-- <asp:DropDownList ID="DropDownList1"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Section" />
                                <asp:ListItem Text="A" />
                                <asp:ListItem Text="B" />
                                <asp:ListItem Text="C" />
                                <asp:ListItem Text="D" />
                                <asp:ListItem Text="E" />
                           </asp:DropDownList>--%>

                      <asp:TextBox runat="server" ID="Txtsection" class="form-control"/>
                      
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="Txtsection" ErrorMessage="Please Enter Field" />
                      </div>
                    </div>
                     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    
                    <div class="col-md-6">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="form-group">
                                    <asp:Label runat="server" Text="Total Fee"></asp:Label>
                                    <asp:TextBox runat="server" OnTextChanged="txtTfee_TextChanged" AutoPostBack="true" ID="txtTfee" class="form-control" />
                                
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator22" ForeColor="Red" ControlToValidate="txtTfee" ErrorMessage="Please Enter Field" /></div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="col-md-6">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <div class="form-group">
                                    <asp:Label runat="server" Text="Discount Fee"></asp:Label>
                                    <asp:TextBox runat="server" OnTextChanged="TextBox2_TextChanged" AutoPostBack="true" ID="txtdiscount" class="form-control" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    
                    
                    <div class="col-md-6">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <div class="form-group">
                                    <asp:Label runat="server" Text="Update Fee"></asp:Label>
                                    <asp:TextBox runat="server" OnTextChanged="TextBox2_TextChanged1" ReadOnly="true" AutoPostBack="true" ID="TextBox2" class="form-control" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="col-md-6">
                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>
                                <div class="form-group">
                                    <asp:Label runat="server" Text="Fee Paid"></asp:Label>
                                    <asp:TextBox runat="server" OnTextChanged="txtFpaid_TextChanged" AutoPostBack="true" ID="txtFpaid" class="form-control" />
                                    
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ForeColor="Red" ControlToValidate="txtFpaid" ErrorMessage="Please Enter Field" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="col-md-6">
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                                <div class="form-group">
                                    <asp:Label runat="server" Text="Fee Due"></asp:Label>
                                    <asp:TextBox ReadOnly="true" AutoPostBack="true" ID="TextBox1" class="form-control" runat="server" />
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label runat="server" Text="Paid By"></asp:Label>
                            <asp:TextBox runat="server" ID="txtPaidby" class="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ForeColor="Red" ControlToValidate="txtPaidby" ErrorMessage="Please Enter Field" />
                        </div>
                    </div>
                 <%--<div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Fee Type"></asp:label>
                           <asp:DropDownList ID="dd2"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Fee Type" />
                                <asp:ListItem Text="Admission Fee" />
                                <asp:ListItem Text="Tution Fee" />
                                <asp:ListItem Text="Transport Fee" />
                                <asp:ListItem Text="Hostel Fee" />
                           </asp:DropDownList>
                      </div>
                    </div>--%>
                    
                 
                   <%-- <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Installments"></asp:label>
                         <asp:DropDownList ID="dd1"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Installment" />
                                <asp:ListItem Text="1st Installment" />
                                <asp:ListItem Text="2nd Installment" />
                                <asp:ListItem Text="3rd Installment" />
                           </asp:DropDownList>
                      </div>
                    </div>--%>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Cashier Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtcName" class="form-control"/>
                        
                      <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ForeColor="Red" ControlToValidate="txtcName" ErrorMessage="Please Enter Field" />
                    </div>
                  </div>
                    <%--<div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Paying Mode"></asp:label>
                      <asp:DropDownList ID="DDPm"  CssClass="form-control" runat="server">
                           <asp:ListItem Text="Select Mode" />
                          <asp:ListItem Text="Cash" />
                          <asp:ListItem Text="Debit/Credit card" />
                          <asp:ListItem Text="DD/Check" />
                      </asp:DropDownList>
                      </div>
                    </div>--%>
                 
                   <%-- <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="DD/Check no"></asp:label>
                        <asp:TextBox runat="server" ID="txtDDcheck" class="form-control"/>
                      </div>
                    </div>--%>
               <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button"  align="center" Style="color:#ffffff;" class="form-control  col-sm-8 gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button_Click" />
                    </div>
                  </div>
                </div>
              </fieldset>
              <div style="overflow:scroll">
                  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Width="222px" DataKeyNames="Id">
                      <Columns>
                          <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                          <asp:BoundField DataField="FeeId" HeaderText="FeeId" SortExpression="FeeId" />
                          <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                          <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                          <asp:BoundField DataField="Admissionno" HeaderText="Admissionno" SortExpression="Admissionno" />
                          <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                          <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                          <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                          <asp:BoundField DataField="TotalFee" HeaderText="TotalFee" SortExpression="TotalFee" />
                          <asp:BoundField DataField="DiscountFee" HeaderText="DiscountFee" SortExpression="DiscountFee" />
                          <asp:BoundField DataField="UpdateFee" HeaderText="UpdateFee" SortExpression="UpdateFee" />
                          <asp:BoundField DataField="FeePaid" HeaderText="FeePaid" SortExpression="FeePaid" />
                          <asp:BoundField DataField="FeeDue" HeaderText="FeeDue" SortExpression="FeeDue" />
                          <asp:BoundField DataField="PaidBy" HeaderText="PaidBy" SortExpression="PaidBy" />
                          <asp:BoundField DataField="CashierName" HeaderText="CashierName" SortExpression="CashierName" />
                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      </Columns>
                      <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                      <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                      <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                      <RowStyle BackColor="White" ForeColor="#003399" />
                      <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                      <SortedAscendingCellStyle BackColor="#EDF6F6" />
                      <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                      <SortedDescendingCellStyle BackColor="#D6DFDF" />
                      <SortedDescendingHeaderStyle BackColor="#002876" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Fees]" DeleteCommand="DELETE FROM [Fees] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Fees] ([FeeId], [Date], [StudentId], [Admissionno], [StudentName], [Class], [Section], [TotalFee], [DiscountFee], [UpdateFee], [FeePaid], [FeeDue], [PaidBy], [CashierName]) VALUES (@FeeId, @Date, @StudentId, @Admissionno, @StudentName, @Class, @Section, @TotalFee, @DiscountFee, @UpdateFee, @FeePaid, @FeeDue, @PaidBy, @CashierName)" UpdateCommand="UPDATE [Fees] SET [FeeId] = @FeeId, [Date] = @Date, [StudentId] = @StudentId, [Admissionno] = @Admissionno, [StudentName] = @StudentName, [Class] = @Class, [Section] = @Section, [TotalFee] = @TotalFee, [DiscountFee] = @DiscountFee, [UpdateFee] = @UpdateFee, [FeePaid] = @FeePaid, [FeeDue] = @FeeDue, [PaidBy] = @PaidBy, [CashierName] = @CashierName WHERE [Id] = @original_Id">
                      <DeleteParameters>
                          <asp:Parameter Name="original_Id" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="FeeId" Type="String" />
                          <asp:Parameter Name="Date" Type="String" />
                          <asp:Parameter Name="StudentId" Type="String" />
                          <asp:Parameter Name="Admissionno" Type="String" />
                          <asp:Parameter Name="StudentName" Type="String" />
                          <asp:Parameter Name="Class" Type="String" />
                          <asp:Parameter Name="Section" Type="String" />
                          <asp:Parameter Name="TotalFee" Type="String" />
                          <asp:Parameter Name="DiscountFee" Type="String" />
                          <asp:Parameter Name="UpdateFee" Type="String" />
                          <asp:Parameter Name="FeePaid" Type="String" />
                          <asp:Parameter Name="FeeDue" Type="String" />
                          <asp:Parameter Name="PaidBy" Type="String" />
                          <asp:Parameter Name="CashierName" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="FeeId" Type="String" />
                          <asp:Parameter Name="Date" Type="String" />
                          <asp:Parameter Name="StudentId" Type="String" />
                          <asp:Parameter Name="Admissionno" Type="String" />
                          <asp:Parameter Name="StudentName" Type="String" />
                          <asp:Parameter Name="Class" Type="String" />
                          <asp:Parameter Name="Section" Type="String" />
                          <asp:Parameter Name="TotalFee" Type="String" />
                          <asp:Parameter Name="DiscountFee" Type="String" />
                          <asp:Parameter Name="UpdateFee" Type="String" />
                          <asp:Parameter Name="FeePaid" Type="String" />
                          <asp:Parameter Name="FeeDue" Type="String" />
                          <asp:Parameter Name="PaidBy" Type="String" />
                          <asp:Parameter Name="CashierName" Type="String" />
                          <asp:Parameter Name="original_Id" Type="Int32" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
              </div>
          <%--  </form>--%>
          </div>

        </div>
      </div>
    </section>
    </div>

      </div>

<!-- Wizard Ends -->
          </div>
   
</asp:Content>
