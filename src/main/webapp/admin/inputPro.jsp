<%@page import="admin.AdminDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<script src="${project}script_admin.js"></script>

<h2>${page_input}</h2>

<c:if test="${result eq 0}">
	<script type="text/javascript">
		//<!--
		erroralert(inputerror);
		//-->
	</script>
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="adminloginform.net"/>
</c:if>
