<%@page import="question.QuestionDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<script src="${project}script_question.js"></script> 

<h2> ${page_modify} </h2>

<c:if test="${result eq 0}">
   	<script type="text/javascript">
   	    // <!--
   	    alert( modifyerror );
   	    // -->
   	</script>
   	<meta http-equiv="refresh" content="0; url=question.net?pageNum=${pageNum}">  
</c:if>
<c:if test="${result eq 1}">
    <c:redirect url="question.net?pageNum=${pageNum}"/>
</c:if>