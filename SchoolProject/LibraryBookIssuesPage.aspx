<%@ Page Title="" Language="C#" MasterPageFile="~/Librarian.Master" AutoEventWireup="true" CodeBehind="LibraryBookIssuesPage.aspx.cs" Inherits="SchoolProject.LibraryBookIssuesPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">ISSUED BOOKS  </div>
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
                      <asp:label runat="server" Text="Student Id"></asp:label>
                        <asp:DropDownList ID="DDstudent" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="DDstudent_SelectedIndexChanged" runat="server"></asp:DropDownList>
                    </div>
                        </div>
                       <%-- <div class="col-md-6">
                    <div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </div>--%>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Issue Id"></asp:label>
                        <asp:TextBox runat="server" ID="txtid" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date"></asp:label>
                        <asp:TextBox runat="server" ID="txtDate" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Book Id"></asp:label>
                      <asp:DropDownList ID="DDbookid" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="DDbookid_SelectedIndexChanged" runat="server"></asp:DropDownList>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Book Name"></asp:label>
                        <asp:TextBox runat="server" ID="txtBookName" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Book Number"></asp:label>
                        <asp:TextBox runat="server" ID="txtBookNum" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Class"></asp:label>
                        <asp:TextBox runat="server" ID="txtclass" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text=" Total Copies"></asp:label>
                        <asp:TextBox runat="server" ID="txtcopies" class="form-control"/>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text=" Available Stock"></asp:label>
                        <asp:TextBox runat="server" ID="txtstock" class="form-control"/>
                    </div>
                  </div>
                     <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text=" Price"></asp:label>
                        <asp:TextBox runat="server" ID="txtprice" class="form-control"/>
                    </div>
                  </div>
                    <%--<div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Student Id"></asp:label>
                        <asp:DropDownList ID="DDstudent" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="DDstudent_SelectedIndexChanged" runat="server"></asp:DropDownList>
                    </div>--%>
             
                      <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text="Student Name"></asp:label>
                       <asp:TextBox runat="server" ID="txtstdname" class="form-control"/>
                    </div>
                  </div>
                      <div class="col-md-6">
                    <div class="form-group">
                      <asp:label runat="server" Text=" Class"></asp:label>
                        <asp:TextBox ID="txtclass1" class="form-control" runat="server" />
                    </div>
                  </div>
                      <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" ID="LabSection" Text="Section"></asp:label>
                       <asp:TextBox ID="txtsection" class="form-control" runat="server" />
                      </div>
                    </div>
                 <div class="col-md-6">
                    <div class="form-group">
                   <asp:label runat="server" ID="Avbstoc" Text="Return Date"></asp:label>
                        <asp:TextBox ID="txtReturn" class="form-control" runat="server" />
                    </div>
                  </div>
                    
                    <div class="col-md-6">
                    <div class="form-group">
                   <asp:label runat="server" ID="Label1" Text="Quantity"></asp:label>
                        <asp:TextBox ID="txtqnty" class="form-control" ReadOnly="true" Text="1" runat="server" />
                    </div>
                  </div>
                     <div class="col-md-6">
                    <div class="form-group">
                   <asp:label runat="server" ID="Label2" Text="Librarian Name"></asp:label>
                        <asp:TextBox ID="txtliname" class="form-control" runat="server" />
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
