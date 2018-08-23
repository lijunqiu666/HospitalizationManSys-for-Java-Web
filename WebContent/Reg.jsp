<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>  
<title>医院住院管理系统注册页面 - Beta 1.0</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<style>
*{
	margin:0px;
	padding:0px;
}
body{
	background-attachment:fixed;
	width:90%;
}
#pos{
	text-align:center;
	margin-top:30px;
	margin-left:130px;
	color: green;
	font-size: 50px;
}
#reg{
	width:250px;
	height:700px;
	margin-top:25px;
	margin-left:550px;
}
#ti{
	color:black;
	font-size:280%;
	font-weight:bold;
}
#d5{
	margin-top:30px;
}
#d5 button{
	width:95px;
	margin-left:20px;
}
</style>
</head>
<body>
<div id="pos">用户注册页面</div>
<div id="reg">
<form role="form" action="" method="post" id="form1" name="form1" onsubmit="sb();">
  <div class="form-group" id="d0">
    <label for="Name" class="control-label">请输入您的姓名：</label>
    <input type="text" class="form-control" id="Name" name="user_name"
    onblur="checkName()" onfocus="focusName(this)">
    <span class="" id="s0"></span>
  </div>
  <div class="form-group" id="d1">
    <label for="User" class="control-label">请输入您的账号：</label>
    <input type="text" class="form-control" id="User" placeholder="账号至少2位最多12" name="user_num"
    onblur="checkNum()" onfocus="focusNum(this)">
    <span class="" id="s1"></span>
  </div>
  <div class="form-group" id="d2">
    <label for="Password" class="control-label">请输入您的密码：</label>
    <input type="password" class="form-control" id="Password" placeholder="密码包含数字字母6-12位之间" name="user_pwd"
    onblur="checkPwd()"  onfocus="focusPwd(this)">
    <span class="" id="s2"></span>
  </div>
  <div class="form-group" id="d3">
    <label for="rePassword" class="control-label">请确认您的密码：</label>
    <input type="password" class="form-control" id="rePassword"
    onblur="checkRePwd()" onfocus="focusrePwd(this)">
    <span class="" id="s3"></span>
  </div>
  <div class="form-group">
    <label>请选择您的性别：</label>
	<select class="form-control" name="sex"> 
	<option value="男" selected="selected">男</option> 
	<option value="女">女</option>
	</select>
  </div>
  <div class="form-group">
    <label>请选择注册身份：</label>
	<select class="form-control"> 
	<option id="doc" selected="selected">医生</option> 
	<option>管理员</option>
	</select>
  </div>
  <div class="form-group" id="d4">
    <label for="Tel" class="control-label">请输入您的联系方式：</label>
    <input type="text" class="form-control" id="Tel" name="tel"
     placeholder="联系方式为11位手机号码" 
     onblur="checkTel()"  onfocus="focusTel(this)">
    <span class="" id="s4"></span>
  </div>
  <div class="form-group">
    <label for="address" class="control-label">请输入您的地址：</label>
    <input type="text" class="form-control" id="address" name="addr">
  </div>
  <div class="form-group" id="d5">
  <button type="submit" class="btn btn-primary">完成</button>
  <button type="reset" class="btn btn-primary">重置</button>
  </div>
</form>	
</div>
</body>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script>

function sb(){
	var obj=document.getElementById("doc");
	if(obj.selected==true){
		$("form").attr("action","AddDocServlet");              
	}else{
		$("form").attr("action","AddAdminServlet");
		 }
}

function checkName()
{
	var name=document.getElementById("Name");
	var n=name.value;
	var d0=document.getElementById("d0");
	var s0=document.getElementById("s0");
	if(n.length>=2&&n.length<=5)
	{
		d0.className+=" has-success has-feedback";
		s0.className="glyphicon glyphicon-ok form-control-feedback";
	}else{
		d0.className+=" has-error has-feedback";
		s0.className="glyphicon glyphicon-remove form-control-feedback";
	}
}
function focusName(obj)
{
	obj.select();
	var d0=document.getElementById("d0");
	var s0=document.getElementById("s0");
	d0.className="form-group";
	s0.className="";
}

function checkNum()
{
	var user=document.getElementById("User");
	var n=user.value;
	var d1=document.getElementById("d1");
	var s1=document.getElementById("s1");
	if(n.length>=2&&n.length<=11)
	{
		d1.className+=" has-success has-feedback";
		s1.className="glyphicon glyphicon-ok form-control-feedback";
	}else{
		d1.className+=" has-error has-feedback";
		s1.className="glyphicon glyphicon-remove form-control-feedback";
	}
}
function focusNum(obj)
{
	obj.select();
	var d1=document.getElementById("d1");
	var s1=document.getElementById("s1");
	d1.className="form-group";
	s1.className="";
}

function focusPwd(obj)
{
	obj.select();
	var d2=document.getElementById("d2");
	var s2=document.getElementById("s2");
	d2.className="form-group";
	s2.className="";
}
function checkPwd()
{
	var pwd=document.getElementById("Password").value;
	var reg=/^[a-zA-Z0-9]{6,12}$/;
	var d2=document.getElementById("d2");
	var s2=document.getElementById("s2");
	if(reg.test(pwd)==true)
	{
		d2.className+=" has-success has-feedback";
		s2.className="glyphicon glyphicon-ok form-control-feedback form-control-feedback";
	}else{
		d2.className+=" has-error has-feedback";
		s2.className="glyphicon glyphicon-remove form-control-feedback form-control-feedback";
	}
}
function checkRePwd()
{
	var pwd=document.getElementById("Password").value;
	var rePwd=document.getElementById("rePassword").value;
	var d3=document.getElementById("d3");
	var s3=document.getElementById("s3");
	if(pwd==rePwd)
	{
		d3.className+=" has-success has-feedback";
		s3.className="glyphicon glyphicon-ok form-control-feedback";
	}else{
		d3.className+=" has-error has-feedback";
		s3.className="glyphicon glyphicon-remove form-control-feedback";
	}
}

function focusrePwd(obj){
	
	obj.select();
	var d3=document.getElementById("d3");
	var s3=document.getElementById("s3");
	d3.className="form-group";
	s3.className="";
	
}

function checkTel(){
	
	var name=document.getElementById("Tel").value;
	var d4=document.getElementById("d4");
	var s4=document.getElementById("s4");
	if(name.length==11)
	{
		d4.className+=" has-success has-feedback";
		s4.className="glyphicon glyphicon-ok form-control-feedback";
	}else{
		d4.className+=" has-error has-feedback";
		s4.className="glyphicon glyphicon-remove form-control-feedback";
	}
}

function focusTel(obj){

	obj.select();
	var d4=document.getElementById("d4");
	var s4=document.getElementById("s4");
	d4.className="form-group";
	s4.className="";

}

</script>
</html>