<%@page import="admin.AdminDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="usetting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<script src="${path}script_user.js"></script>
	<title>TabTab</title>
	</head>
<body>
	<main>
		<c:if test="${result eq 0}">
			<table class="table">
				<tr>
					<th style="width:300px"> ${email}${msg_email_x}</th>
				</tr>
				<tr>
					<th> 
					<div style="text-align:center">
						<input class="btn btn-outline-secondary" type="button" value="${btn_ok}" onclick="usersetemail('${email}')">
					</div>
					</th>
				</tr>
			</table>
		</c:if>
		
		<c:if test="${result eq 1}">
			<form method="post" action="userconfirmemail.net" name="userconfirmform" 
				onsubmit="return userconfirmcheck()">
				<table class="table">
					<tr>
						<th colspan="2"> ${email}${msg_email_o}</th>
					</tr>
					<tr>
						<th> ${str_email}</th>
						<td> <input class="form-control" type="text" name="email" maxlength="50" autofocus> </td>
					</tr>
					<tr>
						<th colspan="2">
						<div style="text-align:center">
							<input class="btn btn-outline-secondary" type="submit" value="${btn_ok}">
							<input class="btn btn-outline-secondary" type="button" value="${btn_ok_cancel}"
								onclick="self.close()">
						</div>
						</th>
					</tr>
				</table>
			</form>
		</c:if>
	</main>
</body>
</html>