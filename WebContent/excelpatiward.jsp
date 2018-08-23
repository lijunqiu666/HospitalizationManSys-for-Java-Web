<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导出病人住院信息为Excel文件</title>
</head>
<body>
		<table>
			<tr>
			   <td>入住病房编号</td>
		       <td>入院编号</td>
		       <td>姓名</td>
		       <td>性别</td>
		       <td>所属科室</td>
		       <td>管理医生</td>
		       <td>医生电话</td>
		       <td>租金(/天)</td>
			</tr>
			<c:forEach var="m" items="${sessionScope.patiward }">
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
		</table>
</body>
</html>