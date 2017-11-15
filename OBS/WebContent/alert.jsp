<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Alert</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
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
<div class="container-fluid">
	<div style="height:30px">
		<p style="font-size:20px;padding-top:5px;padding-left:30px">Alert</p>
	</div>
		<div class="panel panel-default" style="width:95%;margin-left:auto;margin-right:auto;margin-top:10px">
		<br>
		<select class="form-control" style="width:400px;margin-left:2em">
			<option>View All Accounts</option>
			<option>Checking Account</option>
			<option>Saving Account</option>
			<option>General Protection</option>
		</select>
		<br>
		<a style="float:right;margin-right:2em" href="#">View Alert History</a>
		<br>
		<br>
	</div>
	<div style="background-color:#E0E0E0; width:95%; margin-left:auto; margin-right:auto;padding-top:0;">
		<br>
		<div class="panel panel-default" style="width:97%;margin-left:auto; margin-right:auto;border:solid">
		  <div class="panel-heading">
		  	ALERT PROFILE
		  </div>	
		  <!-- Table -->
		  <div class="table-responsive">
				<table class="table table-bordered table-hover">
					<tr style="background-color:#888888;color:white">
						<td colspan="4">Checking Account</td>
					</tr>
					<tr>
						<th></th>
						<th>Primary Email</th>
						<th>412-123-1234</th>
					</tr>
					<tr>
						<td>Balance and Spending</td>
						<td><input type="checkbox" /></td>
						<td><input type="checkbox" /></td>
						<td><a onclick="document.getElementById('checkset-1').style.display=''">Edit</a> | <a onclick="document.getElementById('checkset-1').style.display='none'">Save</a></td>
					</tr>
					<tr id="checkset-1"style="display:none">
						<td colspan="4">
							<input type="checkbox" />Balance below $<input type="text" /><br>
							<input type="checkbox" />Account overdrawn<br>
							<input type="checkbox" />Direct deposit greater than $<input type="text" /><br>
							<input type="checkbox" />Online deposit submitted<br>
							<input type="checkbox" />Account frozen<br>
							<input type="checkbox" />Account reactivated<br>
							<input type="checkbox" />Account summary for this account (user may choose frequency, daily, weekly, or monthly)<br>
							<input type="checkbox" />ATM deposit Posted<br>
							<input type="checkbox" />Bounced check<br>
						</td>
					</tr>
					<tr>
						<td>Payments</td>
						<td><input type="checkbox" /></td>
						<td><input type="checkbox" /></td>
						<td><a onclick="document.getElementById('checkset-2').style.display=''">Edit</a> | <a onclick="document.getElementById('checkset-2').style.display='none'">Save</a></td>
					</tr>
					<tr id="checkset-2"style="display:none">
						<td colspan="4">
							<input type="checkbox" />Billing payment exceeds $<input type="text" /><br>
							<input type="checkbox" />External account receiver added<br>
							<input type="checkbox" />Scheduled online repeating payment series ended<br>
							<input type="checkbox" /><input type="text" /> business days before payment date of an upcoming scheduled bill<br>
							<input type="checkbox" />Check or payment not completed since low remaining balance in account
						</td>
					</tr>
					<tr>
						<td>Protection and Security</td>
						<td><input type="checkbox" />️</td>
						<td><input type="checkbox" /></td>
						<td><a onclick="document.getElementById('checkset-3').style.display=''">Edit</a> | <a onclick="document.getElementById('checkset-3').style.display='none'">Save</a></td>
					</tr>
					<tr id="checkset-3"style="display:none">
						<td colspan="4">
							<input type="checkbox" />Outgoing wire transfer exceeds $<input type="text" /><br>
							<input type="checkbox" />Incoming wire transfer exceeds $<input type="text" /><br>
							<input type="checkbox" />Debit cart transfer exceeds $<input type="text" /><br>
							<input type="checkbox" />ATM withdrawal exceeds $<input type="text" />
						</td>
					</tr>
					
					<tr style="background-color:#888888;color:white">
						<td colspan="4">Saving Account</td>
					</tr>
					<tr>
						<th></th>
						<th>Primary Email</th>
						<th>412-123-1234</th>
					</tr>
					<tr>
						<td>Balance and Spending</td>
						<td><input type="checkbox" /></td>
						<td><input type="checkbox" /></td>
						<td><a onclick="document.getElementById('saveset-1').style.display=''">Edit</a> | <a onclick="document.getElementById('saveset-1').style.display='none'">Save</a></td>
					</tr>
					<tr id="saveset-1"style="display:none">
						<td colspan="4">
							<input type="checkbox" />Balance below $<input type="text" /><br>
							<input type="checkbox" />Account overdrawn<br>
							<input type="checkbox" />Direct deposit greater than $<input type="text" /><br>
							<input type="checkbox" />Online deposit submitted<br>
							<input type="checkbox" />Account frozen<br>
							<input type="checkbox" />Account reactivated<br>
							<input type="checkbox" />Account summary for this account (user may choose frequency, daily, weekly, or monthly)
						</td>
					</tr>
					<tr>
						<td>Payments</td>
						<td><input type="checkbox" /></td>
						<td><input type="checkbox" /></td>
						<td><a onclick="document.getElementById('saveset-2').style.display=''">Edit</a> | <a onclick="document.getElementById('saveset-2').style.display='none'">Save</a></td>
					</tr>
					<tr id="saveset-2"style="display:none">
						<td colspan="4">
							<input type="checkbox" />payment may not be completed due to low balance in your account.
						</td>
					</tr>
					<tr>
						<td>Protection and Security</td>
						<td><input type="checkbox" />️</td>
						<td><input type="checkbox" /></td>
						<td><a onclick="document.getElementById('saveset-3').style.display=''">Edit</a> | <a onclick="document.getElementById('saveset-3').style.display='none'">Save</a></td>
					</tr>
					<tr id="saveset-3"style="display:none">
						<td colspan="4">
							<input type="checkbox" />Outgoing wire transfer exceeds $<input type="text" /><br>
							<input type="checkbox" />Incoming wire transfer exceeds $<input type="text" /><br>
							<input type="checkbox" />Debit cart transfer exceeds $<input type="text" /><br>
							<input type="checkbox" />ATM withdrawal exceeds $<input type="text" />
						</td>
					</tr>
					
					<tr style="background-color:#888888;color:white">
						<td colspan="4">General Protection</td>
					</tr>
					<tr>
						<th></th>
						<th>Primary Email</th>
						<th>412-123-1234</th>
					</tr>
					<tr>
						<td>Password changed</td>
						<td><input type="checkbox" /></td>
						<td><input type="checkbox" /></td>
						<td><a>Edit</a> | <a>Save</a></td>
					</tr>
					<tr>
						<td>User ID changed</td>
						<td><input type="checkbox" /></td>
						<td><input type="checkbox" /></td>
						<td><a>Edit</a> | <a>Save</a></td>
					</tr>
					<tr>
						<td>Account Frozen</td>
						<td><input type="checkbox" /></td>
						<td><input type="checkbox" /></td>
						<td><a>Edit</a> | <a>Save</a></td>
					</tr>
					<tr>
						<td>Account Suspended</td>
						<td><input type="checkbox" /></td>
						<td><input type="checkbox" /></td>
						<td><a>Edit</a> | <a>Save</a></td>
					</tr>
				</table>
		  </div>
		</div>
		<br>
	</div>
</div>
<br>
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