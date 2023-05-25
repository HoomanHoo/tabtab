<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp"%>
<link href="${project}style.css" rel="stylesheet" type="text/css">
<script src="${project}script_admin.js"></script>


<form method="post" action="adminsignok.net" name="signok">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<table border="1">
		<tr>
			<th> ${msg_signup_o} </th>
		</tr>
		<tr>
			<th colspan="3">
				<input class="inputbutton" type="button" value="${btn_sEmail}"
					onclick="location='adminsignuplist.net?pageNum=1'">
			</th>
		</tr>
	</table>
</form>

    