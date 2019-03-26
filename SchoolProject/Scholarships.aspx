<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Scholarships.aspx.cs" Inherits="SchoolProject.Scholarships" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header"> SCHOLARSHIPS</div>
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
                      <asp:label runat="server" Text="Scholar Id"></asp:label>
                        <asp:TextBox runat="server" ID="TxtId" class="form-control"/>
                      </div>
                    </div>
                      <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="Label1" Text="Date"></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="Textbox7"></asp:textbox>
                    </div>
                  </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtbox1" class="form-control"/>
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
                    
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Section"></asp:label>
                        <asp:DropDownList ID="dd1"  CssClass="form-control" runat="server">
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
                      <asp:label runat="server" Text="Roll No"></asp:label>
                        <asp:TextBox runat="server" ID="Textbox4" class="form-control"/>
                    </div>
                  </div>
                    
                 <div class="col-md-6">
                    <div class="form-group">
                   <asp:label runat="server" ID="Avbstoc" Text="Caste"></asp:label>
                      <asp:textbox runat="server" class="form-control" id="Textbox5"></asp:textbox>
                    </div>
                  </div>
                 <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" ID="LabelPron" Text=" Type Of Scholar"></asp:label>
                      <asp:textbox  runat="server" class="form-control" id="Textbox6"></asp:textbox>
                    </div>
                  </div>
                   
                    <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text=" Amount"></asp:label>
                        <asp:TextBox runat="server" ID="Textbox8" class="form-control"/>
                    </div>
                  </div>
              
                    
               <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" OnClick="Button_Click" class="gradient-button gradient-button-1" Text="Submit" runat="server" />
                    </div>
                  </div>
                </div>
              </fieldset>
               <asp:Label Text="" ID="message" runat="server" />
            
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
