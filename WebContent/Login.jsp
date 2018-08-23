<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>登陆 - Beta 1.0</title>
</head>
<style>
*{
	margin:0px;
	padding:0px;
}
#reg{
	width:251px;
	height:450px;
	margin-top:140px;
	margin-left:550px;
}
#d1{
	margin-bottom:30px;
}
#d2{
	margin-bottom:30px;
}
#d3{
	margin-bottom:30px;
}
.bt{
	width:81px;
}
#regbt{
	color:white;
}
body{
	background-image: url('img/login.jpg');
	width:90%;
}
#ti{
	position: relative;
	top:50px;
	left:50px;
	font-size:300%;
	font-weight:bold;
}
</style>
<body>
<p id="ti">医院住院管理系统</p>
<div id="reg">
<form role="form" action="" method="post" id="form1" name="form1" onsubmit="sb();">
  <div class="form-group" id="d1">
    <label for="User">账号：</label>
    <input type="text" class="form-control" id="User" placeholder="请输入您的账号" name="user_num">
  </div>
  <div class="form-group" id="d2">
    <label for="Password">密码：</label>
    <input type="password" class="form-control" id="Password" placeholder="请输入您的密码" name="user_pwd">
  </div>
  <div class="form-group" id="d3">
    <label>请选择您的登陆身份：</label>
	<select class="form-control"> 
	<option>管理员</option> 
	<option selected="selected" id="doc">医生</option>
	</select>
  </div>
  <div class="form-group btg2">
  <button type="submit" class="btn btn-sm btn-primary bt">登陆系统</button>
  <button type="button" class="btn btn-sm btn-primary bt" id="regbt" onclick="window.open('Reg.jsp')">注册</button>
  <button type="reset" class="btn btn-sm btn-primary bt">重置</button>
  </div>
</form>	
</div>
</body>
<script>
function sb(){
	var obj=document.getElementById("doc");
	if(obj.selected==true){
		$("form").attr("action","DocLoginServlet");          
	}else{
		$("form").attr("action","AdminLoginServlet");
		 }
}
</script>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>