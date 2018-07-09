<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
.code{
background-image:url(code.jpg);
font-family:Arial;
font-style:italic;
color:Red;
border:0;
padding:2px 3px;
letter-spacing:3px;
font-weight:bolder;
}
.unchanged {
border:0;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>风险管理平台</title>
<link href="../../jui/themes/css/login.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
var code ; //在全局 定义验证码
function createCode(){ 
code = "";
var codeLength = 4;//验证码的长度
var checkCode = document.getElementById("checkCode");
checkCode.value = "";

var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

for(var i=0;i<codeLength;i++) {
   var charIndex = Math.floor(Math.random()*32);
   code +=selectChar[charIndex];
}
if(code.length != codeLength){
   createCode();
}
checkCode.value = code;
}

function validate () {
var inputCode = document.getElementById("input1").value.toUpperCase();

if(inputCode.length <=0) {
   alert("请输入验证码！");
   
   return false;
}
else if(inputCode != code ){
   alert("验证码输入错误！");
   createCode();
   return false;
}
else {
   alert("OK");
   top.location='index.jsp';
   return true;
}

}
</script>
</head>

<body onload="createCode();">
	<div id="login">
		<div id="login_header">
			<h1 class="login_logo">
				<a href="http://demo.dwzjs.com"><img src="../../jui/themes/default/images/login_logo.gif" /></a>
			</h1>

		</div>
		<div id="login_content">
			<div class="loginForm">
				<form action="index.html">
					<p>
						<label>用户名字：</label>
						<input type="text" name="username" size="20" class="login_input" />
					</p>
					<p>
						<label>密码：</label>
						<input type="password" name="password" size="20" class="login_input" />
					</p>
					<p>
						<label>验证码：</label>
						<input class="code" type="text" size="5" id="input1"/>
						<input type="text" id="checkCode" class="code" style="width: 55px" /><a href="#" onclick="createCode()">看不清楚</a>
						
					</p>
					<div class="login_bar">
						<input class="sub" onclick="validate();"type="button" value=" " />
					</div>
				</form>
			</div>
			<div class="login_banner"><img src="../../jui/themes/default/images/login_banner.jpg" /></div>

		</div>

	</div>
</body>
</html>