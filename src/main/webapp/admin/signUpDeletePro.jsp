<%@page import="admin.AdminDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="asetting.jsp"%>
<script src="${path}script_admin.js"></script>

<h2>${page_delete}</h2>

<c:if test="${result eq 0}">
	<script type="text/javascript">
		//<!--
		alert(deleteerror);
		//-->
	</script>
	<meta http-equiv="refresh" content="0; url=adminsignuplist.net?pageNum=1">
</c:if>

<c:if test="${result eq 1}">
	<c:redirect url="adminsignuplist.net?pageNum=1"/>
</c:if>
<!--   <session-config>
  	<session-timeout>60</session-timeout>
  </session-config> -->	
	