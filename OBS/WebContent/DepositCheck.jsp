<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<title>Deposit Check</title>
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
<div class="container-fluid" style="background-color:rgb(233,229,220)">
	<div class="col-md-3" style="padding-left:0">
		<p style="padding-top:10px"><span class="caret"></span> ACCOUNT BALANCE</p>
		<div style="background-color:white;width:300px;border-top:solid;border-color:#117ACA">
			<p>CHECKING ACCOUNT (....XXXX)</p>
			<p style="margin-bottom:0;text-align:right;font-size:30px;color:#117ACA">$3000.00</p>
			<p style="text-align:right;font-size:10px;font-color:grey">Available balance</p>
		</div>
		<div style="background-color:rgb(240,235,232);width:300px;">
			<p>SAVING ACCOUNT (....XXXX)</p>
			<p style="margin-bottom:0;text-align:right;font-size:30px;">$8000.00</p>
			<p style="text-align:right;font-size:10px;font-color:grey">Available balance</p>
		</div>
	</div>	
	<div class="col-md-5">
		<p style="padding-top:10px"><span class="caret"></span> DEPOSIT CHECKS
		<span class="glyphicon glyphicon-info-sign"></span> Please check information on the right before depositing checks.</p>
		<div style="width:600px;background-color:white;border-top:solid;border-color:#117ACA">
			<form>
				<div class="form-group">
					<label for="name" style="font-size:18px;padding-top:10px">Deposit To</label>
					<select class="form-control">
						<option>CHECKING ACCOUNT (....XXXX)</option>
						<option>SAVING ACCOUNT (....XXXX)</option>
					</select>
					<label for="name" style="font-size:18px;padding-top:10px">Deposit Amount</label>
					<input type="number" class="form-control"/>
					<label for="name" style="font-size:18px;padding-top:10px">Deposit Currency</label>
					<select class="form-control">
						<option>$USD (US Dollar)</option>
						<option>$CAD (Canada Dollar)</option>
						<option>$MXN (Mexico Peso)</option>
					</select>
					<label for="name" style="font-size:16px;padding-top:15px;margin-left:110px;">Front of Check</label>
					<label for="name" style="font-size:16px;padding-top:15px;margin-left:140px;">Back of Check</label>
					<button class="btn btn-primary" type="button" style="margin-left:120px;">Upload File</button>
					<button class="btn btn-primary" type="button" style="margin-left:160px;">Upload File</button>
					<br>
					<br>
					<label for="name" style="font-size:12px;float:left;color:red">*Supported file format: pdf/jpeg/png only</label>
					<button class="btn btn-primary" type="button" style="margin-left:10px;float:right;">Submit</button>
					<button class="btn btn-default" type="button" style="float:right;">Cancel</button>
					<br>
					<br>
				</div>
			</form>
		</div>
	</div>
	<div class="col-md-4" style="padding-left:100px;">
		<p style="padding-top:10px;"><span class="caret"></span> INFORMATION FOR CHECK DEPOSITS</p>
		<div style="background-color:white;width:300px;border-top:solid;border-color:#117ACA">
			<p style="text-align: left;font-size:15px;"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;
			Deposit cutoff time is 9:00 p.m. pacific time.</p>
			<p style="text-align: left;font-size:15px;"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;
			Deposit limit: Today - $2,500</p>
			<p style="text-align: left;font-size:15px;"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;
			Deposit limit: 30-Day - $50,000</p>
			<p style="text-align: left;font-size:15px;"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;
			Estimated check validation period: two working day</p>
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