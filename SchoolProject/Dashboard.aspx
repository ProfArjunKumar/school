<%@ Page Title="" Language="C#" MasterPageFile="~/School.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SchoolProject.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!--Statistics cards Starts-->
<div class="row">
	<div class="col-xl-3 col-lg-6 col-md-6 col-12">
		<div class="card gradient-blackberry">
			<div class="card-body">
				<div class="card-block pt-2 pb-0">
					<div class="media">
						<div class="media-body white text-left">
							<span>Total Students</span>
                            <br />
                            <asp:Label ID="Label2" runat="server" ></asp:Label>
						</div>
						<%--<div class="media-right white text-right">
							<i class="icon-pie-chart font-large-1"></i>
						</div>--%>
					</div>
				</div>
				<div id="Widget-line-chart" class="height-75 WidgetlineChart WidgetlineChartshadow mb-2">					
				</div>
			</div>
		</div>
	</div>
	 <div class="col-xl-3 col-lg-6 col-md-6 col-12">
		<div class="card gradient-ibiza-sunset">
			<div class="card-body">
				<div class="card-block pt-2 pb-0">
					<div class="media">
						<div class="media-body white text-left">
							
							<span>Total Staff</span>
                            <br />
                            <asp:Label ID="Label3" runat="server" ></asp:Label>
						</div>
						<%--<div class="media-right white text-right">
							<i class="icon-bulb font-large-1"></i>
						</div>--%>
					</div>
				</div>
				<div id="Widget-line-chart1" class="height-75 WidgetlineChart WidgetlineChartshadow mb-2">					
				</div>

			</div>
		</div>
	</div>
	
	<div class="col-xl-3 col-lg-6 col-md-6 col-12">
		<div class="card gradient-green-tea">
			<div class="card-body">
				<div class="card-block pt-2 pb-0">
					<div class="media">
						<div class="media-body white text-left">
                           
							<span>Total Books</span>
                            <br />
                            <asp:Label ID="Label4" runat="server" ></asp:Label>
						</div>
						<%--<div class="media-right white text-right">
							<i class="icon-graph font-large-1"></i>
						</div>--%>
					</div>
				</div>
				<div id="Widget-line-chart2" class="height-75 WidgetlineChart WidgetlineChartshadow mb-2">				
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-3 col-lg-6 col-md-6 col-12">
		<div class="card gradient-pomegranate">
			<div class="card-body">
				<div class="card-block pt-2 pb-0">
					<div class="media">
						<div class="media-body white text-left">
                            
							<span>Total Buses</span>
                            <br />
                            <asp:Label ID="Label8" runat="server" ></asp:Label>
						</div>
						<%--<div class="media-right white text-right">
							<i class="icon-wallet font-large-1"></i>
						</div>--%>
					</div>
				</div>
				<div id="Widget-line-chart3" class="height-75 WidgetlineChart WidgetlineChartshadow mb-2">					
				</div>
			</div>
		</div>
	</div>
    </div>
              <div class="row">
    <div class="col-xl-3 col-lg-6 col-md-6 col-12">
		<div class="card gradient-blackberry">
			<div class="card-body">
				<div class="card-block pt-2 pb-0">
					<div class="media">
						<div class="media-body white text-left">
                            
							<span>Total Stationary</span>
                            <br />
                            <asp:Label ID="Label5" runat="server" ></asp:Label>
						</div>
						<%--<div class="media-right white text-right">
							<i class="icon-pie-chart font-large-1"></i>
						</div>--%>
					</div>
				</div>
				<div id="Widget-line-chart4" class="height-75 WidgetlineChart WidgetlineChartshadow mb-2">					
				</div>
			</div>
		</div>
	</div>
    <div class="col-xl-3 col-lg-6 col-md-6 col-12">
		<div class="card gradient-ibiza-sunset">
			<div class="card-body">
				<div class="card-block pt-2 pb-0">
					<div class="media">
						<div class="media-body white text-left">
							
							<span>Total Visitors</span>
                            <br />
                            <asp:Label ID="Label1" runat="server" ></asp:Label>
						</div>
						<%--<div class="media-right white text-right">
							<i class="icon-bulb font-large-1"></i>
						</div>--%>
					</div>
				</div>
				<div id="Widget-line-chart5" class="height-75 WidgetlineChart WidgetlineChartshadow mb-2">					
				</div>

			</div>
		</div>
	</div>
    
   
	
	<div class="col-xl-3 col-lg-6 col-md-6 col-12">
		<div class="card gradient-green-tea">
			<div class="card-body">
				<div class="card-block pt-2 pb-0">
					<div class="media">
						<div class="media-body white text-left">
                           
                            
							<span>Student Attendance</span>
                            <br />
                            <asp:Label ID="Label6" runat="server" ></asp:Label>
						</div>
						<%--<div class="media-right white text-right">
							<i class="icon-graph font-large-1"></i>
						</div>--%>
					</div>
				</div>
				<div id="Widget-line-chart6" class="height-75 WidgetlineChart WidgetlineChartshadow mb-2">				
				</div>
			</div>
		</div>
	</div>
	<div class="col-xl-3 col-lg-6 col-md-6 col-12">
		<div class="card gradient-pomegranate">
			<div class="card-body">
				<div class="card-block pt-2 pb-0">
					<div class="media">
						<div class="media-body white text-left">
                            
							<span>Staff Attendance</span>
                            <br />
                            <asp:Label ID="Label7" runat="server" ></asp:Label>
						</div>
						<%--<div class="media-right white text-right">
							<i class="icon-wallet font-large-1"></i>
						</div>--%>
					</div>
				</div>
				<div id="Widget-line-chart7" class="height-75 WidgetlineChart WidgetlineChartshadow mb-2">					
				</div>
			</div>
		</div>
	</div>
   
</div>

<!--Statistics cards Ends-->







</div>
          </div>
        </div>
</asp:Content>
