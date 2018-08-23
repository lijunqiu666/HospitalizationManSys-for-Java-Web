<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<style>
*{
	margin:0px;
	padding:0px;
}
body{
	background-color: #E0E0E0;
}
#left{
	height:300px;
	padding-top:150px;
	margin-left:27px;
}
.navi{
	font-size:17px;
}
a{
	color: black;
}
</style>
</head>
<body>
<div id="left">
 <ul class="nav nav-stacked">
    <li class="active">
    	<a class="navi" href="Welcome.jsp" target="main">首页</a>
    </li>
    <li>
    	<a class="navi" href="ToUpdateDocServlet?user_id=${sessionScope.doc.user_id }" target="main">个人信息</a>
    </li>
 	<li class="dropdown">
 		<a class="dropdown-toggle navi" data-toggle="dropdown">病人管理<span class="caret"></span></a>
 		<ul class="dropdown-menu">
 			<li onmouseover="activ(this);" onmouseout="defau(this);">
 			<a href="addpati.jsp" target="main">添加病人信息</a></li>
 			<li class="nav-divider"></li>
 			<li onmouseover="activ(this);" onmouseout="defau(this);">
 			<a href="SearchPatiServlet" target="main">病人信息查询</a></li>
 		</ul>
 	</li>
 	<li class="dropdown">
 		<a class="dropdown-toggle navi" data-toggle="dropdown">病房管理<span class="caret"></span></a>
 		<ul class="dropdown-menu">
 			<li onmouseover="activ(this);" onmouseout="defau(this);">
 			<a href="SearchWardServlet" target="main">病房信息查询</a></li>
 		</ul>
 	</li>
 	<li class="dropdown">
 		<a class="dropdown-toggle navi" data-toggle="dropdown">综合信息查询<span class="caret"></span></a>
 		<ul class="dropdown-menu">
 			<li onmouseover="activ(this);" onmouseout="defau(this);">
 			<a href="SearchPwServlet" target="main">住院信息查询</a></li>
 		</ul>
 	</li>
 	<li>
 		<a href="aboutus.jsp" target="main" class="navi">关于我们</a>
 	</li>
 </ul>
</div>
</body>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script>
function activ(obj){
	if(obj.className!=null)
		obj.className+=" active";
	else
		obj.className="active";		
}
function defau(obj){
	if(obj.className=="active")
		obj.className-="active";
	else
		obj.className-=" active";
}
</script>
</html>