<%@page import="user.ULogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="usetting.jsp"%>
<script src="${path}script_user.js"></script>

<h2>${page_modify}</h2>
<c:if test="${result eq 0}">
		<script type="text/javascript">
			//<!--
			alert(modifyerror);
			//-->
		</script>
		<meta http-equiv="refresh" content="0; url=usermypage.net">
</c:if>

<c:if test="${result eq 1}">
	<c:redirect url="usermypage.net"/>
</c:if>