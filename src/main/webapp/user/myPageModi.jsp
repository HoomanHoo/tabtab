<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link href="${project}style.css" rel="stylesheet" type="text/css">
<script src="${project}script_user.js"></script>

<h2>${user_mypagemodi}</h2>
 <form method="post" action="usermypagemodi.net" name="usermypagemodi">
		<table border="1">
			<tr>
				<th> ${str_email}</th>
				<td> ${dto.email} </td>
			</tr>
			<tr>
				<th> ${str_passwd}</th>
				<td> 
					<input class="input" type="password" name="passwd" maxlength="30"
					value="${dto.password}">
				</td>
			</tr>
			<tr>
				<th> ${str_p_address}</th>
				<td> 
					<input class="input" type="text" name="p_address" maxlength="300"
					value="${dto.p_address}">
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputbutton" type="button" value="${btn_u_modify}"
						onclick="location='usermypage.net'"><!-- 가입누르면 넘어가는데 -->
					<input class="inputbutton" type="button" value="${btn_cancel}"
						onclick="location='usermypage.net'">
				
				</th>
			</tr>
		</table>
	</form>