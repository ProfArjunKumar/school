<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Subjects_entry.aspx.cs" Inherits="SchoolProject.Subjects_entry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">SUBJECTS ENTRY</div>
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
                      <asp:label runat="server" Text="Subject Id "></asp:label>
                        <asp:TextBox runat="server" ID="txtId" class="form-control"/>
                      </div>
                    </div>
                    <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Date "></asp:label>
                        <asp:TextBox runat="server" ID="txtdate" class="form-control"/>
                      </div>
                    </div>
                     <div class="col-md-6">
                  <div class="form-group">
                      <asp:label runat="server" Text="Subject Name"></asp:label>
                        <asp:DropDownList ID="ddsubname"  CssClass="form-control" runat="server">
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
                      </div>
                    </div>
                 <div class="col-md-8" style="margin-left:261px;">
                    <div class="form-group">
                        <asp:Button ID="Button" align="center" class="gradient-button gradient-button-1" OnClick="Button_Click" Text="Submit" runat="server" />
                    </div>
                  </div>
                </div>
              </fieldset>
       <div style="overflow:scroll">
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="None">
               <Columns>
                   <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                   <asp:BoundField DataField="SubId" HeaderText="SubId" SortExpression="SubId" />
                   <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                   <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" SortExpression="SubjectName" />
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
          
           
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmsConnection %>" DeleteCommand="DELETE FROM [SubjetEntry] WHERE [Id] = @Id" InsertCommand="INSERT INTO [SubjetEntry] ([SubId], [Date], [Subject_Name]) VALUES (@SubId, @Date, @Subject_Name)" SelectCommand="SELECT * FROM [SubjetEntry]" UpdateCommand="UPDATE [SubjetEntry] SET [SubId] = @SubId, [Date] = @Date, [Subject_Name] = @Subject_Name WHERE [Id] = @Id">
               <DeleteParameters>
                   <asp:Parameter Name="Id" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="SubId" Type="String" />
                   <asp:Parameter Name="Date" Type="String" />
                   <asp:Parameter Name="SubjectName" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="SubId" Type="String" />
                   <asp:Parameter Name="Date" Type="String" />
                   <asp:Parameter Name="SubjectName" Type="String" />
                   <asp:Parameter Name="Id" Type="Int32" />
               </UpdateParameters>
           </asp:SqlDataSource>
          
           
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
