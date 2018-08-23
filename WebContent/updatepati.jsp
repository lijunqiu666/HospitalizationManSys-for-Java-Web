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
	margin-left:200px;
	margin-top:100px;
}
</style>
</head>
<body>
<div id="update">
<form role="form" action="UpdatePatiServlet" method="post" id="form">
  <input type="hidden" name="pati_id" value="${sessionScope.pati.pati_id }">
  <div class="form-group">
    <label for="inputUser">病人姓名：</label>
    <input type="text" class="form-control" id="inputUser" name="pati_name"
    value="${sessionScope.pati.pati_name }">
  </div>
  <div class="form-group">
    <label>请选择您的性别：</label>
	<select class="form-control" name="pati_sex"> 
	<option value="男" selected="selected">男</option> 
	<option value="女" ${sessionScope.pati.pati_sex=='女'?'selected="selected"':'' }>女</option>
	</select>
  </div>
  <div class="form-group">
    <label for="place">病人出生地：</label>
    <input type="text" class="form-control" id="place" name="pati_birthplace"
    value="${sessionScope.pati.pati_birthplace }">
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