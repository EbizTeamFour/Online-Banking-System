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
  				<li>Verify Your Identity</li>
  				<li>Create Sign-on Credentials</li>
  				<li class="active" style="font-weight:bold;">Services & Terms</li>
  				<li>Review Information</li>
			</ul>
		</div>
		<!-- 步骤条     end -->
		
		<br>
		<div class="panel panel-info" style="margin-left:3.5em;width:90%">
		  	<div class="panel-heading">
		    	<p class="panel-title" style="font-size:15px">Services & Terms</p>
		  	</div>
		  	<div class="panel-body">
		  		<div class="col-md-6 panel panel-info" style="margin-left:6.2em;width:80%;">
		  			<div class="pre-scrollable">
		  			<p style="font-weight:bold; font-size:22px;">Devonshire Lending OBS Terms and Conditions Agreement<p>
					<p><strong>with External Transfer Service and Bill Pay Terms and Conditions</strong><p>
					<p>Below are the terms for First Bank's eBanking service.</p>
					We recommend that you print or otherwise save these terms and conditions for your records. These are the Terms and Conditions of Internet Banking Services (herein referred to as “eBanking” for First Bank consumers’ agreement (the “Agreement”). By subscribing to eBanking or using eBanking to access account information, or to make any transfer between accounts or payment to a third party, you agree to the terms of this Agreement. The words "we", "us", "our" and "Bank" refer to First Bank. The words "you" and "your" refer to each person subscribing to eBanking.
					<p></p>
					<p><strong>Computer Equipment and Internet Use</strong><p>
					You are solely responsible for the maintenance, installation and operation of your computer, and for the hardware and software used in accessing eBanking. First Bank shall not be responsible for any errors, deletions, or failures that occur as a result of any malfunction of your computer or software, nor will First Bank be responsible for any computer virus or malware that affects your computer or software while using eBanking. By your use of  eBanking, you acknowledge that the Internet is not a secure means for transmitting confidential information and understand and acknowledge that any information you  provide, receive or request via the Internet can be intercepted and/or viewed by unknown third parties. First Bank does not guarantee that downloads from its site will not contain a virus or other destructive device. It is your responsibility to protect your information and to maintain your computer with updated protection against viruses, malware, and spyware.
					Additionally, you must have an Internet service provider and a 128-bit compliant web browser to utilize eBanking. It will be your responsibility to establish these. Any costs or fees to obtain these services or software are solely your responsibility.
		  			<p><strong>Security</strong></p>
					First Bank is committed to protecting the security and confidentiality of your account information.  We use multifactor authentication, which means that we confirm your identity through multiple identifying methods, including: user IDs, passwords, the use of a security code upon your first log-in, and challenge questions.  In addition to the use of multifactor authentication, we also use the following methods of protecting your information:
					You can only access eBanking with a web browser that uses 128-bit encryption.
					You must have a valid User ID, and Password, to log in.
					We will take additional steps to confirm your identity, including, but not limited to challenge questions, if you access eBanking from a computer we do not recognize or we believe additional authentication is warranted.
					We may temporarily suspend access to eBanking for any reason, including inactivity.
					If you do not take action for a period of time while you are in an eBanking session, you will be automatically logged off. We display your previous login date each time you access eBanking for you to review.
		  			</div>
		  			<div class="checkbox">
    						<label>
      						<input type="checkbox">I have read and agreed to the Terms and Conditions.
    						</label>
  					</div>
		    		</div>
		    		<br><br>
		    		<button type="button" class="btn btn-info" style="margin-left:90px;float:left;width:8%" onClick="{location.href='register_step2.jsp'}">Back</button>
		    		<a href="register_step4.jsp"><button type="button" class="btn btn-info" style="margin-right:90px;float:right;width:8%">Accept</button></a>
		    		<br>		 
		    		<br>
		    		
		  	</div>
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