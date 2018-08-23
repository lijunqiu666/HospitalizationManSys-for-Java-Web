<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<div id="table">
<form role="form" action="DeletePatiServlet" method="post" onsubmit="batdelete()">
 <table class="table table-striped table-bordered table-hover table-condensed">
   <thead>
     <tr>
       <th>
		<input type="checkbox" onclick="show(this.checked)">
	   </th>
       <th>入院编号</th>
       <th>姓名</th>
       <th>性别</th>
       <th>入住病房编号</th>
       <th>入院时间</th>
       <th>出生地</th>
       <th>操作</th>
     </tr>
   </thead>
   <tbody>
   <c:forEach var="m" items="${sessionScope.pati}">
	<tr>
		<td>
		<input type="checkbox" name="pati_id" value="${m.pati_id }" >
		</td>
		<td>${m.pati_num }</td>
		<td>${m.pati_name }</td>
		<td>${m.pati_sex }</td>
		<td>${m.pati_ward_num }</td>
		<td>${m.pati_birthday }</td>
		<td>${m.pati_birthplace }</td>
		<td>
		<button type="button" class="btn btn-sm btn-primary" 
		onclick="del(${m.pati_id })">删除</button>
		<button type="button" class="btn btn-sm btn-primary" 
		onclick="window.location.href='ToUpdatePatiServlet?pati_id=${m.pati_id }'">修改</button>
		</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="2" align="center">
		<button type="submit" class="btn btn-sm btn-primary bt">选中删除</button>
		</td>
		<td colspan="5" align="center">
		<button  type="button" class="btn btn-sm btn-primary" 
		onclick="window.location.href='excelpati.jsp'">导出病房信息表至Excel</button>
		</td>
	</tr>
    </tbody>
 </table>
</form>
</div>
</body>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script>
function show(f)
{
	var chs=document.getElementsByName("pati_id");
	for(var i=0;i<chs.length;i++)
	{
		chs[i].checked=f;
	}
}

function batdelete(){
	var flag=0;
	var pati_id=document.getElementsByName("pati_id");
	for(var j=0;j<pati_id.length;j++){
		if(pati_id[j].checked==true){	flag=1;	}
	}
	if(	flag==1	){
	for(var i=0;i<pati_id.length;i++){
		if(pati_id[i].checked==true){
			//window.location.href="DeletePatiServlet?pati_id="+pati_id[i].value;
	}else{	pati_id[i].value="";	}
}
	}
	else{
		$("form").attr("action","");
		alert(" 请选中要删除的病人信息!");	
		}
}

// 单个删除

function del(id){
	
	window.location.href='javascript:doDelete('+id+')';
	
}

var doDelete=function(n){
	var f=confirm("确定删除吗?");
	if(f)
	{
		window.location.href="DeletePatiServlet?pati_id="+n;
	}
};
</script>
</html>