<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="StdPromotion.aspx.cs" Inherits="SchoolProject.StdPromotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">CLASS PROMOTION</div>
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
                  <h3>Current Class</h3>
                <div class="row">
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Sdt Id"></asp:label>
                        <asp:TextBox runat="server" ID="TxtStdId" class="form-control"/>
                      </div>
                        </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="TxtDate" class="form-control"/>
                      </div>
                        </div>
                  <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Std Name"></asp:label>
                        <asp:TextBox runat="server" ID="TxtStdName" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                        <asp:DropDownList ID="Class"  CssClass="form-control" runat="server">
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
                      <asp:label runat="server" Text="Section"></asp:label>
                       <asp:DropDownList ID="Section"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Section" />
                                <asp:ListItem Text="A" />
                                <asp:ListItem Text="B" />
                                <asp:ListItem Text="C" />
                                <asp:ListItem Text="D" />
                                <asp:ListItem Text="E" />
                           </asp:DropDownList>
                      </div>
                    </div>
                </div>
                  <br />
                  <br />
                  <h3>Promoted To</h3>
                  <div class="row">
                  <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Promoted StdId"></asp:label>
                        <asp:TextBox runat="server" ID="PstdId" class="form-control"/>
                      </div>
                    </div>
                       <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="StdName"></asp:label>
                        <asp:TextBox runat="server" ID="TxtSName" class="form-control"/>
                      </div>
                    </div>
                       <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Acadamic Year"></asp:label>
                        <asp:TextBox runat="server" ID="TxtAcYear" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Promoted Class"></asp:label>
                        <asp:DropDownList ID="ShiftClass"  CssClass="form-control" runat="server">
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
                      <asp:label runat="server" Text="Promoted Section"></asp:label>
                       <asp:DropDownList ID="PSection"  CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select Section" />
                                <asp:ListItem Text="A" />
                                <asp:ListItem Text="B" />
                                <asp:ListItem Text="C" />
                                <asp:ListItem Text="D" />
                                <asp:ListItem Text="E" />
                           </asp:DropDownList>
                      </div>
                    </div>
                    <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button1" align="center" class="form-control  col-sm-4" Text="Submit" runat="server" OnClick="Button1_Click" />
                    </div>
                  </div>
                </div>
              </fieldset>
                  <div style="overflow:scroll;">
                      <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="249px"></asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
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
