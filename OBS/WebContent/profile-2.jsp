<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<title>Personal Settings</title>
</head>
<body>
<div class="container-fluid">
	<div class="row" style="height:160px;background:url(img/bg1.jpg);background-size:100% 300%;background-repeat:no-repeat;">
		<div class="col-md-3">
			<a href="">
				<img src="img/logo1.png" width=300 height=120>
			</a>
		</div>
		<div class="col-md-9" style="padding-top:10px">
			<ul class="nav nav-pills" style="float:right">
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
                    <li><a href="#" id="">Pay bill</a>
                    </li>
                    <li><a href="#" id="">Manage bill</a>
                    </li>
                    <li><a href="#" id="">Payment Activity</a>
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
                    <li><a href="AutoApply1.jsp" id="">Auto Loan</a>
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
<div class="container">
	<div style="height:30px">
		<p style="font-size:20px;padding-top:5px;padding-left:30px">Security Settings</p>
	</div>
	<br>
	<div class="panel panel-info" style="margin-left:2em;width:40%;float:left">
	  	<div class="panel-heading">
	    	<p class="panel-title" style="font-size:15px">User Information</p>
	  	</div>
	  	<div class="panel-body" style="padding:0">
	    	<table class="table table-bordered table-hover" >
	    		<tr>
	    			<th style="background-color:rgb(233,229,220)">User ID<span style="float:right"><a>Edit</a></span></th>
	    		</tr>
	    		<tr>
	    			<th>XXX123</th>
	    		</tr>
	    		<tr>
	    			<th style="background-color:rgb(233,229,220)">Telephone Numbers<span style="float:right"><a>Edit</a></span></th>
	    		</tr>
	    		<tr>
	    			<th>Primary:XXX-XXX-XXXX<br>Secondary:</th>
	    		</tr>
	    		<tr>
	    			<th style="background-color:rgb(233,229,220)">PIN/Password<span style="float:right"><a>Edit</a></span></th>
	    		</tr>
	    		<tr>
	    			<th>Security measures preclude display.</th>
	    		</tr>
	    		<tr>
	    			<th style="background-color:rgb(233,229,220)">Telephone Banking Preference<span style="float:right"><a>Edit</a></span></th>
	    		</tr>
	    		<tr>
	    			<th>Use my existing 4-digit Telephone Banking PIN.</th>
	    		</tr>
	    		<tr>
	    			<th style="background-color:rgb(233,229,220)">Two-Step Verification <span style="float:right"><a>Edit</a></span></th>
	    		</tr>
	    		<tr>
	    			<th>These are the phone numbers you have registered for Resetting Access:</th>
	    		</tr>
	    	</table>
	  	</div>
	</div>
	<div class="panel panel-info" style="margin-left:8em;width:40%;float:left">
	  	<div class="panel-heading">
	    	<p class="panel-title" style="font-size:15px">Security Details</p>
	  	</div>
	  	<div class="panel-body" style="padding:0">
	    	<table class="table table-bordered table-hover" >
	    		<tr>
	    			<th style="background-color:rgb(233,229,220)">Personal Security Image and Caption<span style="float:right"><a>Edit</a></span></th>
	    		</tr>
	    		<tr>
	    			<th><img src="img/security.jpeg"/><br>xxx123456</th>
	    		</tr>
	    		<tr>
	    			<th style="background-color:rgb(233,229,220)">Security Questions/Answers<span style="float:right"><a>Edit</a></span></th>
	    		</tr>
	    		<tr>
	    			<th>What was the TV series you liked most as a child? <br> ****</th>
	    		</tr>
	    		<tr>
	    			<th>What was the first name of your physical teacher? <br> ****</th>
	    		</tr>
	    		<tr>
	    			<th>What is your favorite fruit? <br> *** </th>
	    		</tr>
	    	</table>
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