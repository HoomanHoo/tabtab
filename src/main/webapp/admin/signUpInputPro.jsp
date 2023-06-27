<%@page import="admin.AdminDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="asetting.jsp"%>
<script src="${path}script_admin.js"></script>

<h2>${page_input}</h2>

<c:if test="${resultCheck eq 0}">
	<script type="text/javascript">
		//<!--
		erroralert(inputerror);
		//-->
	</script>
</c:if>
<c:if test="${resultCheck eq 1}">
	<c:redirect url="adminsignok.net"/>
</c:if>
