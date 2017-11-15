<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">
<title>Welcome Page</title>
</head>
<body style="background:linear-gradient(to right, rgb(103,173,76), #117ACA);">
<div class="container">
	<div style="height:100px">
	</div>
	<div style="background-color:white;width:90%;margin-right:auto;margin-left:auto;border-radius:10px">
		<div class="row">
			<div class="col-md-1">
				<img src="img/logo1.png"width=180 height=70>
			</div>
		</div>
		<br>
		<div class="panel panel-info" style="margin-left:2em;width:30%;float:left">
		  	<div class="panel-heading">
		    	<p class="panel-title" style="font-size:15px">Enter your User ID and Password</p>
		  	</div>
		  	<div class="panel-body">
		    	User ID:<br>
		    	<input type="text" />
		    	<br>
		    	Password:<br>
		    	<input type="text" />
		    	<br>
		    	<a href="#">Forget User ID or Password</a>
		    	<br>
		    	<button type="button" class="btn btn-info" onClick="{location.href='account.jsp'}">Sign On</button>
		    	<br>
		    	Enroll in Online Banking:<br>
		    	<a href="#">New User Registration</a>
		    	<br>
		  	</div>
		</div>
		<div class="col-md-6 panel panel-info" style="margin-left:2em;width:60%;">
		  	<div class="panel-body">
		    	All of the account information and services you have come to expect from Online Banking are ready and waiting for you. Just complete the sign on process to see your account(s), view statements, pay bills, and conduct the activities that you normally would.
				<br>
				To sign on: Enter your User ID and password. Then, click the 'Sign On' button.
		  	</div>
		</div>
		<br>
		<br>
		<div style="clear:both"></div>
		<div class="container:fluid" style="background-color:rgb(245,245,245);border-radius:10px">
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
	</div>
</div>
</body>
</html>