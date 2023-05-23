<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>

<input type="hidden" name="result" value="${result}">
<script type="text/javascript">
//<!--
	let result = document.querySelector("input[name=result]").value;
	alert(result + "개 항목 발주 완료되었습니다");
//-->
</script>
<meta http-equiv=refresh content="0;url=orderhistory.net">



