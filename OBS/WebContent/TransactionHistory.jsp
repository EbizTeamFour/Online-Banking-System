<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<title>Transaction History</title>
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
<div class="container-fluid" style="padding:0; background-color:#F5DEB3;">
	<div style="height:30px">
		<p style="font-size:20px;padding-top:5px;padding-left:30px">Transaction History</p>
	</div>
	<div class="panel panel-info" style="width:95%;margin-left:auto;margin-right:auto;margin-top:10px">
		<br>
		<div style="float:left">
		<select class="form-control" style="width:400px">
			<option>Checking Account</option>
			<option>Saving Account</option>
		</select>
		<br>
		<p style="font-size:15px;margin-left:20px">Available Balance: $3000.00<br>Present Balance: $3000.00</p>
		<br>
		</div>
		<div id="image" style="width: 500px; height: 200px;float:left;margin-left:10em"></div>
		<div style="clear:both"></div>
		<a href="#" style="margin-left:20px">View Online Statement >></a>
		<br>
		<br>
	</div>
	<div style="background-color:#E0E0E0; width:95%; margin-left:auto; margin-right:auto;padding-top:0;">
		<br>
		<div class="panel panel-default" style="width:97%;margin-left:auto; margin-right:auto;border:solid">
		  <div class="panel-heading">
		  	MONTHLY TRANSACTION
		  	<div style="float:right">
				<a onclick="document.getElementById('search').style.display=''">Search</a> | <a>Export</a> | <a>Print</a>
		  	</div>
		  </div>
		  <div id="search" style="width:97%;margin-left:auto; margin-right:auto;display:none">
		  		<div>
		  		SEARCH <a href='#'>CLEAR</a>
		  		</div>
			  	<div style="float:left">
			  	Description<br>
			  	<input class="typein" type="text" />
			  	<br>
			  	Amount<br>
			  	<input type="text" placeholder="$" style="width:70px"> - <input type="text" placeholder="$" style="width:70px">
			  	</div>
			  	<div style="float:left;margin-left:20px">
			  	Date (yyyy/mm/dd)<br>
			  	<input type="date" /> - <input type="date" />
			  	<br>
			  	Check Number<br>
			  	<input type="text" style="width:70px"> - <input type="text" style="width:70px">
			  	</div>	
			  	<div style="clear:both"></div>
			  	<br>
			  	<button class='btn btn-default'>Search</button> | <a onclick="document.getElementById('search').style.display='none'"> Close</a>
			  	<br>
			  	<br>
		  </div>	
		  <!-- Table -->
		  <div class="table-responsive">
				<table class="table table-bordered table-hover">
					<tr style="background-color:rgb(72,83,93);color:white">
						<th>Date</th>
						<th>Description</th>
						<th>Withdrawal</th>
						<th>Deposit</th>
						<th>Category</th>
						<th>Amount</th>
					</tr>
					<tr>
					<th><span class="caret"></span>November</th>
					</tr>
					<tr>
						<td>Nov.10</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
						<td>Nov.9</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
						<td>Nov.10</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
						<td>Nov.10</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
					<th><span class="caret"></span>October</th>
					</tr>
					<tr>
						<td>Oct.10</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
						<td>Oct.9</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
						<td>Oct.10</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
						<td>Oct.10</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
					<th><span class="caret"></span>September</th>
					</tr>
					<tr>
						<td>Sep.10</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
						<td>Sep.9</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
						<td>Sep.10</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
					<tr>
						<td>Sep.10</td>
						<th>DEBIT CARD PURCHASE XXXXX8669 VENMO XXXXX4430 NY</th>
						<th>$30</th>
						<th></th>
						<th>Services + Supplies</th>
						<th>$3000.00</th>
					</tr>
				</table>
		  </div>
		</div>
		<br>
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
	<script type="text/javascript">
	Highcharts.chart('image', {
	    chart: {
	        type: 'column'
	    },
	    title: {
	    		text: null
	    },
	    xAxis: {
	        lineWidth: 0,
	        minorGridLineWidth: 0,
	        lineColor: 'transparent',
	        minorTickLength: 0,
	        tickLength: 0,
	        categories: ['September', 'October', 'November']
	    },
	    yAxis: {
	        visible:false
	    },
	    credits: {
	        enabled: false
	    },
	    series: [{
	        name: 'In',
	        data: [500, 3000, 3000]
	    }, {
	        name: 'Out',
	        data: [3000, 400, 500]
	    }]
	});
	</script>
</body>
</html>