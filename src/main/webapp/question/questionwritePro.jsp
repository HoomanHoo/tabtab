<%@page import="question.QuestionDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<script src="${project}script_question.js"></script>  

<h2> ${page_question} </h2>
<c:if test="${result eq 0}">
    	<script type="text/javascript">
    	    // <!--
    	    alert( inserterror );
    	    // -->
    	</script>
    	<meta http-equiv="refresh" content="0; url=question.net">
</c:if>
<c:if test="${result eq 1}">
    <c:redirect url="question.net"/>
</c:if>
