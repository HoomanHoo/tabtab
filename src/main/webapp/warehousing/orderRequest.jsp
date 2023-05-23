<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="${path}design.css" rel="stylesheet" type="text/css">
<script src="${path}jquery-3.6.4.js"></script>
<script src="${path}orderRequestScript.js" defer></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
	</header>
	<aside>
	</aside>
	<article>
		<table border="1">
			<tr>
				<td>${textPName }</td>
				<td>${orderNumber }</td>
				<td>${orderDate }</td>
			</tr>
			<c:forEach var="dto" items="${dtos}">
			<c:set var="orderDate">
				<fmt:formatDate value="${dto.o_date}" pattern="yyyy-MM-dd"/>
			</c:set>
				<tr>
					<td>${dto.p_name}</td>
					<td>${dto.o_num}</td>
					<td>${orderDate}</td>
					<td><input type="button" id="${dto.o_num }" name="btn" value="${btnDetailRequest}">
				</tr>
			</c:forEach>
		</table>
	</article>
	<footer>
	</footer>
</body>
</html>