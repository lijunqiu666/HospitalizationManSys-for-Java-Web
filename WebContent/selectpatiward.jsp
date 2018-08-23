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
 <table class="table table-striped table-bordered table-hover table-condensed">
   <thead>
     <tr>
	    <th>入住病房编号</th>
        <th>入院编号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>所属科室</th>
        <th>管理医生</th>
        <th>医生电话</th>
        <th>租金(/天)</th>
     </tr>
   </thead>
   <tbody>
   <c:forEach var="m" items="${sessionScope.patiward}">
	<tr>
		<td>${m.pw_ward_num }</td>
		<td>${m.pw_pati_num }</td>
		<td>${m.pw_pati_name }</td>
		<td>${m.pati_sex }</td>
		<td>${m.pw_ward_depart }</td>
		<td>${m.pw_ward_doc }</td>
		<td>${m.pw_ward_doc_tel }</td>
		<td>${m.pw_ward_rent }</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="5" align="center">
		<button  type="button" class="btn btn-sm btn-primary" 
		onclick="window.location.href='excelpatiward.jsp'">导出病房信息表至Excel</button>
		</td>
	</tr>
    </tbody>
 </table>
</div>
</body>
<script src="jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</html>