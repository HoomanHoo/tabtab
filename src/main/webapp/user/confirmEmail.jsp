<%@page import="admin.AdminDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link href="${project}style.css" rel="stylesheet" type="text/css">
<script src="${project}script_user.js"></script>

<h2>${page_confirm}</h2>
<c:if test="${result eq 0}">
	<table>
		<tr>
			<th style="width:300px"> ${email}${msg_email_x}</th>
		</tr>
		<tr>
			<th> 
				<input class="inputbutton" type="button" value="${btn_ok}" onclick="usersetemail('${email}')">
			</th>
		</tr>
	</table>
</c:if>

<c:if test="${result eq 1}">
	<form method="post" action="userconfirmemail.net" name="userconfirmform" 
		onsubmit="return userconfirmcheck()">
		<table>
			<tr>
				<th colspan="2"> ${email}${msg_email_o}</th>
			</tr>
			<tr>
				<th> ${str_email}</th>
				<td> <input class="input" type="text" name="email" maxlength="50" autofocus> </td>
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputbutton" type="submit" value="${btn_ok}">
					<input class="inputbutton" type="button" value="${btn_ok_cancel}"
						onclick="self.close()">
				</th>
			</tr>
		</table>
	</form>
</c:if>

