<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<input type="hidden" id="result"value="${result }">

<c:if test="${result eq 0 }">
<script type="text/javascript">

	alert("오류가 발생했습니다 잠시 후 다시 시도해주십시오");


</script>
<meta http-equiv=refresh content="0;url=orderrequest.net">
</c:if>

<c:if test="${result ne 0 }">
<script type="text/javascript">
	let code = document.querySelector("#result");
	let result = code.value;
	alert(result + "개 배송되었습니다");


</script>
<meta http-equiv=refresh content="0;url=orderrequest.net">
</c:if>

</body>
</html>