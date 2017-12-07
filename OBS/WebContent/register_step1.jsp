<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link href="~/Content/bootstrap-step/css/bs-is-fun.css" rel="stylesheet" />
	<title>Welcome Page</title>
<style type="text/css">
.steps {
  position: relative;
  margin-bottom: 30px;
  counter-reset: step;  /*创建步骤数字计数器*/
}
/*步骤描述*/
.steps li {
  list-style-type: none;
  font-size: 12px;
  text-align: center;
  width: 25%;
  position: relative;
  float: left;
}
 
/*步骤数字*/
.steps li:before {
  display: block;
  content: counter(step); /*设定计数器内容*/
  counter-increment: step;  /*计数器值递增*/
  width: 32px;
  height: 32px;
  background-color: rgb(52,122,196);
  line-height: 32px;
  border-radius: 32px;
  font-size: 16px;
  color: #fff;
  text-align: center;
  font-weight: 700;
  margin: 0 auto 8px auto;
}
 
/*连接线*/
.steps li ~ li:after {
  content: '';
  width: 100%;
  height: 2px;
  background-color: rgb(52,122,196);
  position: absolute;
  left: -50%;
  top: 15px;
  z-index: -1; /*放置在数字层后面*/
}
 
/*将当前/完成步骤之前连接线变绿*/
.steps li.active:after {
  background-color: rgb(52,122,196);
}
 
/*将当前/完成步骤之后的数字及连接线变灰*/
.steps li.active ~ li:before,
.steps li.active ~ li:after {
  background-color: #777;
}
</style>
</head>

<body style="background:linear-gradient(to right, rgb(103,173,76), #117ACA);">
<div class="container">
	<div style="height:100px">
	</div>
	<div style="background-color:white;width:90%;margin-right:auto;margin-left:auto;border-radius:10px">
		<div class="row">
			<div class="col-md-1">
				<img src="img/logo1.png"width=180 height=70 style="margin-left:3.5em; margin-top:2em">
			</div>
		</div>
		<br>
		
		<!-- 步骤条     star -->
		<div style="width:90%; margin:20px auto; background:#fff; padding:10px; ">
    			<ul class="steps">
  				<li class="active" style="font-weight:bold;">Verify Your Identity</li>
  				<li>Create Sign-on Credentials</li>
  				<li>Services & Terms</li>
  				<li>Review Information</li>
			</ul>
		</div>
		<!-- 步骤条     end -->
		
		<br>
		<div class="panel panel-info" style="margin-left:3.5em;width:90%">
		  	<div class="panel-heading">
		    	<p class="panel-title" style="font-size:15px">Your Information</p>
		  	</div>
		  	<form method="POST" action="registerValid.do">
			  	<div class="panel-body" style="font-weight:bold;">
			    	Social Security Number (SSN):<br>
			    	<input type="text" class="form-control" style="width:20%; font-weight:normal;" name="SSN" placeholder="No dashes or spaces"/>
			    	<br>
			    	DL Visa Debit Card PIN*:<br>
			    	<input type="text" class="form-control" style="width:20%; font-weight:normal;" name="accountPIN" placeholder="4 digits"/>
			    	<br>
			    	DL Account Number:<br>
			    	<input type="text" class="form-control" name="accountNumber" style="width:20%"/>
			    	<br>
			    	<button type="submit" class="btn btn-info" style="width:8%" onClick="{location.href='register_step2.jsp'}">Next</button>
			    	<br>		 
			    	<br>
			  	</div>
		  	</form> 
		</div>
		
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