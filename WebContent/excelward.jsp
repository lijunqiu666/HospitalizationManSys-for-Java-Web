<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导出病房信息为Excel文件</title>
</head>
<body>
		<table>
			<tr>
				<td>病房编号</td>
				<td>病房类型</td>
				<td>所属科室</td>
				<td>床位数</td>
				<td>管理医生</td>
				<td>医生电话</td>
				<td>租金(/天)</td>
				<td>病房状态(0：空余  1：已满)</td>
			</tr>
			<c:forEach var="m" items="${sessionScope.ward_id }">
				<tr>
					<td>${m.ward_num }</td>
					<td>${m.ward_type }</td>
					<td>${m.ward_depart }</td>
					<td>${m.ward_bed }</td>
					<td>${m.pati_doc }</td>
					<td>${m.pati_doc_tel }</td>
					<td>${m.pati_rent }</td>
					<td>${m.pati_status }</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>