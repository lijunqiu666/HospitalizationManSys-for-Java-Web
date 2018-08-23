<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
</head>
<body>
<div id="table">
 <table class="table table-striped table-bordered table-hover table-condensed">
   <thead>
     <tr>
       <th>病房编号</th>
       <th>病房类型</th>
       <th>所属科室</th>
       <th>管理医生</th>
       <th>医生电话</th>
       <th>租金(/天)</th>
       <th>病房状态(0：空余  1：已满)</th>
     </tr>
   </thead>
   <tbody>
   <c:forEach var="m" items="${sessionScope.ward}">
	<tr>
		<td>${m.ward_num }</td>
		<td>${m.ward_type }</td>
		<td>${m.ward_depart }</td>
		<td>${m.ward_doc }</td>
		<td>${m.ward_doc_tel }</td>
		<td>${m.ward_rent }</td>
		<td>${m.ward_status }</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="8" align="center">
		<button  type="button" class="btn btn-sm btn-primary" 
		onclick="window.location.href='excelward.jsp'">导出病房信息表至Excel</button>
		</td>
	</tr>
    </tbody>
 </table>
</div>
</body>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>