<%@ Page Title="" Language="C#" MasterPageFile="~/Librarian.Master" AutoEventWireup="true" CodeBehind="LibrarianProfileDetails.aspx.cs" Inherits="SchoolProject.LibrarianProfileDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!-- Wizard Starts -->
<div class="row">
    <div class="col-sm-12">
        <div class="content-header">MY PROFILE</div>
    </div>
</div>
<section id="icon-tabs">
  <div class="row">
    <div class="col-12">
             <div class="card-body text-center cover-image" data-image-src="Swank">
                    <div class=" card-profile">
                        <div class="row justify-content-center">
                            <div class="">
                                <div class="">
                                    <a href="#">
                                       
                                        <asp:Image ID="Image1" runat="server" class="rounded-circle" alt="profile" Height="250px" Width="200px" ImageUrl="Photo" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <fieldset>
        <div class="row">
       
            <div class="col-md-6">
             <div class="form-group">
                  
                       <strong>Name :</strong><asp:Label ID="Label1" runat="server"></asp:Label>
                 </div>
                </div>
           
            <div class="col-md-6">
             <div class="form-group">
             <strong>Department :</strong><asp:Label ID="Label2" runat="server"></asp:Label>
             </div>
            </div>
                <%-- <div class="col-md-6">
             <div class="form-group">
            <strong>Subject :</strong><asp:Label ID="Label4" runat="server"></asp:Label>
             </div>
            </div>--%>
              <%--<div class="col-md-6">
             <div class="form-group">
           <strong>Experience :</strong><asp:Label ID="Label3" runat="server"></asp:Label>
             </div>
            </div>--%>
            
             <div class="col-md-6">
             <div class="form-group">
            <strong>Contact No:</strong><asp:Label ID="Label5" runat="server"></asp:Label>
             </div>
            </div>
             <div class="col-md-6">
             <div class="form-group">
           <strong>Alternate Contact No:</strong><asp:Label ID="Label6" runat="server"></asp:Label>
             </div>
            </div>
             <div class="col-md-6"> 
             <div class="form-group">
             <strong>Address :</strong><asp:Label ID="Label4" runat="server"></asp:Label>
             </div>
            </div>
              <div class="col-md-6">
             <div class="form-group">
            <strong>Email :</strong><asp:Label ID="Label3" runat="server"></asp:Label>
             </div>
            </div>
            
                       
                  
                     
                       
                   
                        </div>
        </fieldset>
       
    </section>
              </div>
            </div>
        </div>
</asp:Content>
