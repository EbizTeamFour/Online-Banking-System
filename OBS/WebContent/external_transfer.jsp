<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<title>Home Page</title>
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
<div class="transfer" style="margin-left:30px">
	<p style="padding-top:10px"><span class="caret"></span> PAYMENT INFORMATION</p>
		<div style="width:800px;background-color:white;border-top:solid;border-color:#117ACA">
			<form>
				<div class="form-group">
					<label for="name" style="font-size:18px;padding-top:10px">To</label>
					<input type="text" class="form-control"/>
					<label for="name" style="font-size:18px;padding-top:10px">Amount</label>
					<input type="number" class="form-control"/>
					<label for="name" style="font-size:18px;padding-top:10px">Send Date</label>
					<input type="number" class="form-control"/>
					<label for="name" style="font-size:18px;padding-top:10px">Delivery</label>
					<input type="number" class="form-control"/>
					<label for="name" style="font-size:18px;padding-top:10px">Pay From</label>
					<select class="form-control" style="padding-left:50px;">
						<option>Checking Account: $3000</option>
						<option>Saving Account: $8000</option>
					</select>
					<label for="name" style="font-size:18px;padding-top:10px">Message</label>
					<input type="number" class="form-control"/>
					<br>
					<button class="btn btn-default" type="button" style="float:left;width:15%" onclick = "window.location.href = 'index.jsp'">Back</button>
					<button class="btn btn-default" type="button" style="float:right;width:15%" onclick = "window.location.href = 'review_exter_transfer.jsp'">Next Step</button>
					<br>				
					<br>
				</div>
			</form>
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