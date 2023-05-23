<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<c:forEach var="dto" items="${dtos }">
<tr>
<td>${dto.medi_name}</td>
<td>${dto.order_quan }</td>
<td><input type="number" name="dwQuan" min="0" max="${dto.order_quan }"></td>
<td>${dto.supply_values}</td>
<td><input type="text" name="unDeliReason"></td>
</tr>
</c:forEach>
</table>
</body>
</html>