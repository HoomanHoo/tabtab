<%@page import="user.ULogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="usetting.jsp"%>
<script src="${path}script_user.js"></script>

<h2>${page_delete}</h2>

<c:if test="${result eq 0}">
		<script type="text/javascript">
			//<!--
			alert(deleteerror);
			//-->
		</script>
		<meta http-equiv="refresh" content="0; url=userloginform.net">
</c:if>
<c:if test="${result eq 1}">
	${sessionScope.memEmail = null}
	<c:redirect url="userloginform.net"/>
</c:if>
<!--   <session-config>
  	<session-timeout>60</session-timeout>
  </session-config> -->