<%@ Page Title="" Language="C#" MasterPageFile="~/Accountant.Master" AutoEventWireup="true" CodeBehind="Fee_type.aspx.cs" Inherits="SchoolProject.Fee_type" %>
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
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="txtdate" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Student Id"></asp:label>
                        <asp:DropDownList ID="DDstudent" class="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DDstudent_SelectedIndexChanged"></asp:DropDownList>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Student Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtStdName" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                          <asp:TextBox runat="server" ID="Txtclass" class="form-control"/>
                      <%--  <asp:DropDownList ID="dd"  CssClass="form-control" runat="server">
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
                      </div>
                    </div>
                 <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Fee Type"></asp:label>
                           <asp:DropDownList ID="dd2"  CssClass="form-control" runat="server" OnSelectedIndexChanged="dd2_SelectedIndexChanged">
                                <asp:ListItem Text="Fee Type" />
                                <asp:ListItem Text="Admission Fee" />
                                <asp:ListItem Text="Tution Fee" />
                                <asp:ListItem Text="Transport Fee" />
                                <asp:ListItem Text="Hostel Fee" />
                           </asp:DropDownList>
                      </div>
                    </div>
                    
                 
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Installments"></asp:label>
                         <asp:DropDownList ID="dd1"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Installment" />
                                <asp:ListItem Text="1st Installment" />
                                <asp:ListItem Text="2nd Installment" />
                                <asp:ListItem Text="3rd Installment" />
                           </asp:DropDownList>
                      </div>
                    </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Cashier Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtcName" class="form-control"/>
                    </div>
                  </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Paying Mode"></asp:label>
                      <asp:DropDownList ID="DDPm"  CssClass="form-control" runat="server">
                           <asp:ListItem Text="Select Mode" />
                          <asp:ListItem Text="Cash" />
                          <asp:ListItem Text="Debit/Credit card" />
                          <asp:ListItem Text="DD/Check" />
                      </asp:DropDownList>
                      </div>
                    </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Bankname"></asp:label>
                        <asp:TextBox runat="server" ID="txtBname" class="form-control"/>
                    </div>
                  </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="DD/Check no"></asp:label>
                        <asp:TextBox runat="server" ID="txtDDcheck" class="form-control"/>
                      </div>
                    </div>
                 
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Total Fee"></asp:label>
                        <asp:TextBox runat="server" ID="txtTfee" class="form-control"/>
                      </div>
                    </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Fee Paid"></asp:label>
                        <asp:TextBox runat="server" ID="txtFpaid" class="form-control"/>
                    </div>
                  </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Paid By"></asp:label>
                        <asp:TextBox runat="server" ID="txtPaidby" class="form-control"/>
                    </div>
                  </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text=" Discount"></asp:label>
                        <asp:TextBox runat="server" ID="txtdiscount" class="form-control"/>
                    </div>
                  </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Remark"></asp:label>
                        <asp:TextBox runat="server" ID="txtremarks" class="form-control"/>
                    </div>
                  </div>
                
                
                    
               <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="gradient-button gradient-button-1" Text="Submit" runat="server" OnClick="Button_Click" />
                    </div>
                  </div>
                </div>
              </fieldset>

            
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
