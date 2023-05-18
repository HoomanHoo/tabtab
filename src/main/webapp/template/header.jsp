<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, height=device-height ,initial-scale=1">
		<link href="${path}design.css" rel="stylesheet" type="text/css">
		<script src="${path}script.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:set var="where" value="${param.where }"/>
<c:if test="${where eq null }">
<div id="header">
	기본 헤더입니다
</div>
</c:if>
<c:if test="${where eq 1 }">

	${findPasswd}

</c:if>
<c:if test="${where eq 2 }">

	${myPage}

</c:if>
<c:if test="${where eq 3 }">

	${questionBoard}

</c:if>
<c:if test="${where eq 4 }">

	${inventory}

</c:if>
<c:if test="${where eq 5 }">

	${order}

</c:if>
</body>
</html>