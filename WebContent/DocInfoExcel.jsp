<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<table>
			<tr>
				<td>用户名</td>
				<td>医生姓名</td>
				<td>性别</td>
				<td>电话</td>
				<td>住址</td>
			</tr>
			 <c:forEach var="m" items="${sessionScope.doc }">
				<tr>
			<td>${m.user_num }</td>
			<td>${m.user_name }</td>
			<td>${m.sex }</td>
			<td>${m.tel }</td>
			<td>${m.addr }</td>	
				</tr>
			</c:forEach>
			
		</table>
</body>
</html>