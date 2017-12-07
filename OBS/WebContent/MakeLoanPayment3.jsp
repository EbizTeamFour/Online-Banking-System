<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Auto Loan Payment Step 1</title>
<style>
@import
	url('//maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css');

#sidebar-wrapper .sidebar-nav {
	position: absolute;
	top: 0;
	width: 90%;
	font-size: 14px;
	margin: 0;
	padding: 0;
	list-style: none;
}

.sidebar-nav li a {
	display: block;
	color: #000;
	padding: 8px 16px;
	text-decoration: none;
	background: #428bca !important;
	color: #fff !important;
}

#sidebar-wrapper .sidebar-nav li a {
	display: block;
	text-decoration: none;
	color: #428bca;
}

#sidebar-wrapper .sidebar-nav li ul.panel-collapse {
	list-style: none;
	-moz-padding-start: 0;
	-webkit-padding-start: 0;
	-khtml-padding-start: 0;
	-o-padding-start: 0;
	padding-start: 0;
	padding: 0;
}

#sidebar-wrapper .sidebar-nav li ul.panel-collapse li i {
	margin-right: 10px;
}

#sidebar-wrapper .sidebar-nav li ul.panel-collapse li {
	text-indent: 15px;
}

.sidebar-nav li a.active {
	background-color: #4CAF50;
	color: white;
}

.sidebaar-nav li a:hover:not (.active ) {
	background-color: #555;
	color: white;
}
</style>
<body>
	<!-- Header  -->
	<div class="container-fluid">
	<div class="row" style="height:160px;background:url(img/bg1.jpg);background-size:100% 300%;background-repeat:no-repeat;">
		<div class="col-md-3">
			<a href="account.jsp">
				<img src="img/logo1.png" width=300 height=120>
			</a>
		</div>
		<div class="col-md-9" style="padding-top:10px">
			<ul class="nav nav-pills" style="float:right">
				<li class="active"><a style="color:#117ACA;border-color:#117ACA;"><img src="img/chat.png" width=20 height=20> Chat Online</a></li>
				<li class="active" style="background-color:transparent;"><a href="index.jsp">Sign off</a></li>
				<li class="active"><a href="#">Language</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="container-fluid">
	<ul class="nav nav-tabs">
	  <li class="dropdown">
	    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
	      My Account <span class="caret"></span>
	    </a>
		<ul class="dropdown-menu" style="width:1250px">
			<ul class="list-inline">
                   <li><a href="account.jsp" id="">Quick View</a>
                   </li>
                   <li><a href="TransactionHistory.jsp" id="">Transaciton History</a>
                   </li>
            </ul>
		</ul>
	 </li>
	  <li class="dropdown">
	    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
	      Transfer <span class="caret"></span>
	    </a>
		<ul class="dropdown-menu" style="width:1130px">
                <ul class='list-inline'>
                    <li><a href="internal_transfer.jsp" id="">DL Accounts and Payments</a>
                    </li>
                    <li><a href="external_transfer.jsp" id="">To External Accounts</a>
                    </li>
                </ul>
		</ul>
	  </li>
	  <li class="dropdown">
	    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
	      Pay Bill <span class="caret"></span>
	    </a>
		<ul class="dropdown-menu" style="width:1030px">
                <ul class='list-inline'>
                    <li><a href="PayBillIndex.jsp" id="">Pay bill</a>
                    </li>
                    <li><a href="ManageBillIndex.jsp" id="">Manage bill</a>
                    </li>
                </ul>
		</ul>
	  </li>
	  <li><a href="DepositCheck.jsp">Deposit</a></li>
	  <li class="dropdown">
	    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
	      Loan <span class="caret"></span>
	    </a>
		<ul class="dropdown-menu" style="width:860px">
                <ul class='list-inline'>
                    <li><a href="LoanAccount.jsp" id="">Auto Loan</a>
                    </li>
                    <li><a href="#" id="">Mortgage</a>
                    </li>
                </ul>
		</ul>
	  </li>
	  <li class="dropdown">
	    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
	      Profile and Settings <span class="caret"></span>
	    </a>
		<ul class="dropdown-menu" style="width:780px">
                <ul class='list-inline'>
                    <li><a href="profile-1.jsp" id="">Personal Settings</a>
                    </li>
                    <li><a href="profile-2.jsp" id="">Security Settings</a>
                    </li>
                </ul>
		</ul>
	  </li>
	  <li><a href="alert.jsp">Alert and Notification</a></li>
	</ul>
</div>
	
	<!--main body starts here-->
	
	<div class="container-fluid" style="background-color: rgb(233, 229, 220)">
		<div class="row">
		<div id="wrapper" class="col-md-3">
				<div id="sidebar-wrapper">
					<aside id="sidebar">
					<ul id="sidemenu" class="sidebar-nav">
						<li><a href="#"> <span class="sidebar-icon"><i
									class="fa fa-dashboard"></i></span> <span class="sidebar-title">Loan</span>
						</a></li>
						<li><a class="accordion-toggle collapsed toggle-switch"
							data-toggle="collapse" href="#submenu-2"> <span
								class="sidebar-icon"><i class="fa fa-users"></i></span> <span
								class="sidebar-title">Manage Your Auto Loan</span> <b
								class="caret"></b>
						</a>
							<ul id="submenu-2" class="panel-collapse collapse panel-switch"
								role="menu">
								<li><a href="#"><i class="fa fa-caret-right"></i>Account Summary</a></li>
								<li><a href="#"><i class="fa fa-caret-right"></i>Schedule
										an Auto Loan Payment</a></li>
								<li><a href="#"><i class="fa fa-caret-right"></i>Apply
										for new Auto Loan</a></li>
								<li><a href="#"><i class="fa fa-caret-right"></i>Refinance
										an Auto Loan</a></li>
								<li><a href="#"><i class="fa fa-caret-right"></i>Check
										Application Status</a></li>
							</ul></li>
						<li><a class="accordion-toggle collapsed toggle-switch"
							data-toggle="collapse" href="#submenu-3"> <span
								class="sidebar-icon"><i class="fa fa-newspaper-o"></i></span> <span
								class="sidebar-title">Manage Your Mortgage</span> <b
								class="caret"></b>
						</a>
							<ul id="submenu-3" class="panel-collapse collapse panel-switch"
								role="menu">
								<li><a href="#"><i class="fa fa-caret-right"></i>Posts</a></li>
								<li><a href="#"><i class="fa fa-caret-right"></i>Comments</a></li>
							</ul></li>
						
					</ul>
					</aside>
				</div>
		</div>
		
		<!-- Account Summary -->

				<div class="col-md-9"
					style="margin-left: 25%; padding: 1px 16px; border-top: solid; border-color: #117ACA; background-color: white">
					<div class="row">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <h4 class="section-heading text-uppercase">Step 3 of 3:</h4>
            <h5 class="section-subheading">Scheduled Payment</h5>
            <hr>
          </div>
          
        </div>
        <div class="row text-left">
        <h5 class="text col-md-9" style="color:blue;">Payment Amount</h5>
          <div class="col-xs-9">     
            <p>Your Payment of $255.58 is scheduled on 12/30/2017!</p>
          </div>
          <div class="col-md-9">
          <p>Thank you!</p>
            <hr>
          </div>
        <div class="col-md-9">
              <a href="LoanAccount.jsp" class="btn btn-info">Go to Account Summary</a>
        </div>
        <div class="col-md-9"><br></div>
        </div>
        </div>   
      </div>
					</div>				
				</div>
				<br>	
		</form>
</div>
		</div>
		<br>
	</div>

<!-- Footer  -->
	<div class="container:fluid"
		style="background-color: rgb(245, 245, 245)">
		<br>
		<div style="text-align: center">
			<ul style="list-style: none">
				<li><a href="#"
					style="color: rgb(72, 83, 93); font-size: 15px; font-weight: bold"><span
						class="glyphicon glyphicon-search" aria-hidden="true"></span> Find
						ATM/Branch</a></li>
				<li><a href="#">Online Banking & Bill Pay Guarantee</a> | <a
					href="#">Service Agreement</a> | <a href="#">Private Policy</a> | <a
					href="#">Online Security</a></li>
				<li>© Copyright 2017. The Devonshire Lending, Inc. All Rights
					Reserved.</li>
				<li><a href="#">Need Help? View our Contact Numbers and
						Hours of Operation</a></li>
			</ul>
		</div>
		<br> <br>
	</div>
</body>
</html>