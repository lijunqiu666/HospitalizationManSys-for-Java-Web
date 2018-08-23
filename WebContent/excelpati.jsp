<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导出病人信息为Excel文件</title>
</head>
<body>
		<table>
			<tr>
				<td>入院编号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>入住病房编号</td>
				<td>入院时间</td>
				<td>出生地</td>
			</tr>
			<c:forEach var="m" items="${sessionScope.pati_id }">
				<tr>
					<td>${m.pati_num }</td>
					<td>${m.pati_name }</td>
					<td>${m.pati_sex }</td>
					<td>${m.pati_ward_num }</td>
					<td>${m.pati_birthday }</td>
					<td>${m.pati_birthplace }</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>