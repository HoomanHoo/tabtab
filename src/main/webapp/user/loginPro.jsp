<%@page import="admin.AdminDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="usetting.jsp"%>
<script src="${path}script_user.js"></script>


<h2>${user_page_login}</h2>

<c:if test="${result == -1}">
	<script type="text/javascript">
		//<!--
		erroralert(emailxerror );
		//-->
	</script>
</c:if>

<c:if test="${result eq 0}">
	<script type="text/javascript">
		//<!--
		erroralert(passerror);
		//-->
</script>
</c:if>

<c:if test="${result eq 1}">
	<c:redirect url="userloginform.net"/>
</c:if>
