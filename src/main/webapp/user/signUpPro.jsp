
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link href="${project}style.css" rel="stylesheet" type="text/css">
<script src="${project}script_user.js"></script>

<h2> ${upload}</h2>
<c:if test="${result eq 0}">
	<script type="text/javascript">
		//<!--
		erroralert(inputerror);
		//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="userloginform.net"/>
</c:if>
