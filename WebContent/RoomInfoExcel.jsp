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
		  <td>房间号</td>
          <td>房间类型</td>
          <td>所属科室</td>
          <td>负责人</td>
          <td>电话</td>
          <td>租金/天</td>
           <td>是否已满</td>
			</tr>
			 <c:forEach var="m" items="${sessionScope.newroom }">
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
			
		</table>
</body>
</html>