<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<title>Regular Bill Payment</title>
	<style>
	@import
		url('//maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css');

	#sidebar-wrapper .sidebar-nav {
		position: absolute;
		top: 0;
		width:95%;
		font-size: 14px;
		padding-left:0;
		padding-top: 10%;
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

	.sidebaar-nav li a:hover:not (.active) {
		background-color: #555;
		color: white;
	}
	
	</style>
</head>
<body>
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
	<div class="container-fluid" style="background-color:#F5DEB3;">
		<div class="col-md-3" style="padding-left:0">
			<div id="sidebar-wrapper">
				<ul id="sidemenu" class="sidebar-nav">
					<li><a href='RegularBill.jsp'>
						<span class="sidebar-title">
						<span class="sidebar-icon"><i class="fa fa-newspaper-o"></i></span>
						&nbsp;Pay Utility & Rent</span>
						</a>
					</li>
					<li><a href='CreditCardBill.jsp'>
						<span class="sidebar-title">
						<span class="sidebar-icon"><i class="fa fa-credit-card"></i></span>
						&nbsp;Pay Credit Card Bill</span>
						</a>
					</li>
					<li><a href='AutomaticBill.jsp'>
						<span class="sidebar-title">
						<span class="sidebar-icon"><i class="fa fa-money"></i></span>
						&nbsp;Automatic Bill Payment</span>
						</a>
					</li>
				</ul>
			</div>
			<p style="padding-top:50%"><span class="caret"></span> ACCOUNT BALANCE</p>
			<div style="background-color:white;border-top:solid;border-color:#117ACA">
				<p>CHECKING ACCOUNT (....XXXX)</p>
				<p style="margin-bottom:0;text-align:right;font-size:30px;color:#117ACA">$3000.00</p>
				<p style="text-align:right;font-size:10px;font-color:grey">Available balance</p>
			</div>
			<div style="background-color:rgb(240,235,232)">
				<p>SAVING ACCOUNT (....XXXX)</p>
				<p style="margin-bottom:0;text-align:right;font-size:30px;">$8000.00</p>
				<p style="text-align:right;font-size:10px;font-color:grey">Available balance</p>
			</div>		
		</div>	
	<div class="col-md-6">
		<p style="padding-top:10px"><span class="caret"></span> PAY UTILITY & RENT</p>
		<div style="background-color:white;border-top:solid;border-color:#117ACA">
			<form>
				<div class="form-group">
					<label for="text" class="col-2 col-form-label" style="font-size:15px">&nbsp;Biller Name</label>
  					<div class="col-10">
    					<input class="form-control" type="text" id="BillerName" style="margin-left:5px;width:98%">
  					</div>
  					<br>
  					<label for="text" class="col-2 col-form-label" style="font-size:15px">
  					&nbsp;Biller's Account Number (As appears on bill)</label>
  					<div class="col-10">
    					<input class="form-control" type="text" id="AccountNumber" style="margin-left:5px;width:98%">
  					</div>
  					<br>
  					<label for="text" class="col-2 col-form-label" style="font-size:15px">&nbsp;Biller's Bank Name</label>
  					<div class="col-10">
    					<input class="form-control" type="text" id="BillerBankName" style="margin-left:5px;width:98%">
  					</div>
  					<br>
  					<label for="text" class="col-2 col-form-label" style="font-size:15px">&nbsp;Biller's Bank Branch Address</label>
  					<div class="col-10">
    					<input class="form-control" type="text" id="BillerBankAdd" style="margin-left:5px;width:98%">
  					</div>
  					<br>
					<label for="text" style="font-size:15px;">&nbsp;Payment Account</label>
					<select class="form-control" style="margin-left:5px;width:98%">
						<option>CHECKING ACCOUNT (....XXXX)</option>
						<option>SAVING ACCOUNT (....XXXX)</option>
					</select>
					<br>
					<label for="text" style="font-size:15px;">&nbsp;Payment Amount (in $USD)</label>
					<input type="number" class="form-control" style="margin-left:5px;width:98%"/>
					<br>
					<label for="name" style="font-size:15px;">&nbsp;Scheduled Payment Date</label>
					<input type="date" class="form-control" style="margin-left:5px;width:98%"/>
					<br>
					<br>
					<button class="btn btn-info" type="button" style="margin-left:10px;margin-right:10px;float:right;"
					onclick = "window.location.href = 'ReviewRegularBill.jsp'">Next Step</button>
					<button class="btn btn-default" type="button" style="float:right;">Cancel</button>
					<br>
					<br>
				</div>
			</form>
		</div>
	</div>
	<div class="col-md-3">
	<p style="padding-top:10px;"><span class="caret"></span> Fast Bill Payment</p>
		<div style="background-color:white;border-top:solid;border-color:#117ACA">
			<br>
			<p style="text-align: left;font-size:15px;">&nbsp;Select from Your Frequent Biller List:</p>
			<div class="list-group">
  				<a href="#" class="list-group-item list-group-item-action" style="margin-left:5px;width:95%">
  				ABC Electricity Limited</a>
  				<a href="#" class="list-group-item list-group-item-action" style="margin-left:5px;width:95%">
  				Verizon Fios</a>
  				<a href="#" class="list-group-item list-group-item-action" style="margin-left:5px;width:95%">
  				Amberson Apartment</a>
  				<a href="#" class="list-group-item list-group-item-action" style="margin-left:5px;width:95%">
  				XYZ Heating Corp.</a>
			</div>
			<br>
		</div>
	</div>
</div>
<div class="container:fluid" style="background-color:rgb(245,245,245)">
	<br>
	<div style="text-align:center">
		<ul style="list-style:none">
			<li><a href="#" style="color:rgb(72,83,93);font-size:15px;font-weight:bold"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Find ATM/Branch</a></li>
			<li><a href="#">Online Banking & Bill Pay Guarantee</a> | <a href="#">Service Agreement</a> | <a href="#">Private Policy</a> | <a href="#">Online Security</a></li>
			<li>© Copyright 2017. The Devonshire Lending, Inc. All Rights Reserved.</li>
			<li><a href="#">Need Help? View our Contact Numbers and Hours of Operation</a></li>
		</ul>
	</div>
	<br>
	<br>
</div>
</body>
</html>