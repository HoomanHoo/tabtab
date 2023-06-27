<%@page import="admin.AdminDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="asetting.jsp"%>
<script src="${path}script_admin.js"></script>

<h2>${page_signok}</h2>

<c:if test="${result eq null}">
	<script type="text/javascript">
		//<!--
		erroralert(eamilNerror);
		//-->
	</script>
</c:if>
<c:if test="${result ne null}">
	<c:redirect url="adminsignuplist.net?pageNum=1"/>
</c:if>
<!--  "location='adminsignuplist.net?pageNum=1'" -->