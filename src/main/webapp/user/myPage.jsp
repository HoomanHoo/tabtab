<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link href="${project}style.css" rel="stylesheet" type="text/css">
<script src="${project}script_user.js"></script>

<h2>${user_mypage}</h2>
    <form method="post" action="usermypage.net" name="usermypage">
		<table border="1">
			<tr>
				<th> ${str_email}</th>
				<td> ${dto.email} </td>
			</tr>
			<tr>
				<th> ${str_passwd}</th>
				<td> ${dto.password}</td>
			</tr>
			<tr>
				<th> ${str_p_address}</th>
				<td> ${dto.p_address}</td>
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputbutton" type="button" value="${btn_u_modify}"
						onclick="location='usermodifyMP.net'"><!-- 가입누르면 넘어가는데 -->
				</th>
			</tr>
		</table>
	</form>