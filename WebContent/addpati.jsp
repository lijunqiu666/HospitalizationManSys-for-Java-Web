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
#add{
	width:200px;
	margin-left:200px;
	margin-top:100px;
}
</style>
</head>
<body>
<div id="add">
<form role="form" action="AddPatiServlet" method="post" id="form">
  <div class="form-group">
    <label for="inputUser">病人姓名：</label>
    <input type="text" class="form-control" id="inputUser" name="pati_name">
  </div>
  <div class="form-group">
    <label>请选择您的性别：</label>
	<select class="form-control" name="pati_sex"> 
	<option value="男" selected="selected">男</option> 
	<option value="女">女</option>
	</select>
  </div>
  <div class="form-group">
    <label for="num">入住病房编号：</label>
    <input type="text" class="form-control" id="num" name="pati_ward_num">
  </div>
  <div class="form-group">
    <label for="place">病人出生地：</label>
    <input type="text" class="form-control" id="place" name="pati_birthplace">
  </div>
  <div class="form-group">
  <button type="submit" class="btn btn-primary" >添加</button>
  </div>
</form>	
</div>
</body>
<script>
function check(){
	var flag=1;
	var inputs=document.getElementsByTagName("input");
	for(var i=0;i<input.length;i++){
		if(inputs[i].value==null)	{ flag=0; }
	}
	if(flag==0){
		alert("请填写完整信息!");
		$("form").attr("action","");
		return false;
		}
	else
		return true;
}
</script>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>