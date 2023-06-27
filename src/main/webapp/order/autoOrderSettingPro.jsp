<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>

<input type="hidden" id="result" value="${result }">
<script type="text/javascript">
//<!--
	let result = document.querySelector("#result").value;
	alert(result + "개 항목 자동발주 설정되었습니다");
//-->
</script>
<meta http-equiv=refresh content="0; url=autoorder.net">
