<%@page import="admin.AdminDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<script src="${project}script_admin.js"></script>


<h2>${admin_page_login}</h2>

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
	${sessionScope.memEmail = email}<!-- 세션에 값저장 -->
		<!-- ${sessionScope.memCode = mem_code} -->
	<c:redirect url="inventoryinven.net"/>
</c:if>









    