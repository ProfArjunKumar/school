<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentProfileDetails.aspx.cs" Inherits="SchoolProject.StudentProfileDetails" %>
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
        <div class="col-md-12">
            <table class="table row table-borderless w-100 m-0 " style="align-content=center">
               
                
                    <tr>
                        <td><strong>Name :</strong><asp:Label ID="Label1" runat="server"></asp:Label></td></tr>

                        <tr><td><strong>Class :</strong><asp:Label ID="Label2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><strong>Section :</strong><asp:Label ID="Label4" runat="server"></asp:Label></td></tr>
                    <tr>    <td><strong>Father Name :</strong><asp:Label ID="Label3" runat="server"></asp:Label></td>
                    </tr>
                    
           
                     <tr>
                        <td><strong>Mother Name</strong><asp:Label ID="Label5" runat="server"></asp:Label></td></tr>
                     <tr>   <td><strong>Parent's Occupation </strong><asp:Label ID="Label6" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><strong>Email:</strong><asp:Label ID="Label8" runat="server"></asp:Label></td></tr>
                     <tr>   <td><strong>Contact No:</strong><asp:Label ID="Label7" runat="server"></asp:Label></td>
                    </tr>

               
            </table>
            </div>
       
    </section>
              </div>
            </div>
    </div>
</asp:Content>
