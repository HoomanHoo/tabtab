<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="asetting.jsp"%>
<script src="${path}script_admin.js"></script>

<h2>${page_input}</h2>

<c:if test="${result eq 0}">
	<script type="text/javascript">
		//<!--
		erroralert(inputerror);
		//-->
	</script>
	<meta http-equiv=refresh content="0;url=adminloginform.net">
</c:if>
<c:if test="${result eq 1}">
<script type="text/javascript">
		//<!--
		erroralert("회원가입이 성공하였습니다");
		//-->
	</script>
	<meta http-equiv=refresh content="0;url=adminloginform.net">
</c:if>
