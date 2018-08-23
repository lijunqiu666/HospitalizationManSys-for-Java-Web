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
#update{
	width:200px;
	margin-left:180px;
	margin-top:54px;
}
</style>
</head>
<body>
<div id="update">
<form role="form" action="UpdateDocServlet" method="post" id="form">
  <div class="form-group">
	<input type="hidden" name="user_id" value="${sessionScope.person.user_id }">
  </div>
  <div class="form-group">
    <label for="Name">姓名：</label>
    <input type="text" class="form-control" id="Name" name="user_name"
    value="${sessionScope.person.user_name }">
  </div>
  <div class="form-group">
    <label for="User">账号：</label>
    <input type="text" class="form-control" id="User" name="user_num"
    value="${sessionScope.person.user_num }">
  </div>
  <div class="form-group">
    <label for="Passowrd">密码：</label>
    <input type="password" class="form-control" id="Password" name="user_pwd"
    value="${sessionScope.person.user_pwd }">
  </div>
  <div class="form-group">
    <label>性别：</label>
	<select class="form-control" name="sex"> 
	<option value="男" selected="selected">男</option> 
	<option value="女" ${sessionScope.person.sex=='女'?'selected="selected"':'' }>女</option>
	</select>
  </div>
  <div class="form-group">
    <label for="Tel">联系方式：</label>
    <input type="text" class="form-control" id="Tel" name="tel"
    value="${sessionScope.person.tel }">
  </div>
  <div class="form-group">
    <label for="Addr">住址：</label>
    <input type="text" class="form-control" id="Addr" name="addr"
    value="${sessionScope.person.addr }">
  </div>
  <div class="form-group">
  <button type="submit" class="btn btn-primary">提交信息</button>
  <button type="reset" class="btn btn-primary">重置信息</button>
  </div>
</form>	
</div>
</body>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>