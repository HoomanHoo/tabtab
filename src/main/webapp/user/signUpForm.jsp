<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link href="${project}style.css" rel="stylesheet" type="text/css">
<script src="${project}script_user.js"></script>

<h2> ${user_signup_page}</h2>
 <%-- enctype="multipart/form-data" --%>
 <form method="post"  action="usersignuppro.net" name="userinputform"
 	onsubmit="return userinputcheck()">
 	<input type="hidden" name="check" value="0">
	<table>
		<tr>
			<th colspan="2"> ${msg_signup}</th>
		</tr>
		<tr>
			<th> ${str_email}</th>
			<td> <input class="input" type="text" name="email" maxlength="50">
			<input class="inputbutton" type="button" value="${btn_confirm}"
					onclick="userconfirmemail()">
			</td>
		</tr>
		<tr>
			<th> ${str_pr_img}</th>
			<td>  <input type="file" name="pr_img">
			</td>
		</tr>
		<tr>
			<th> ${str_pl_img}</th>
			<td> <input type="file" name="pl_img"></td>
		</tr>
		<tr>
			<th colspan="2">${msg_upload}</th>
		</tr>
		<tr>
			<th colspan="2">
			<input class="inputbutton" type="submit" value="${btn_input}">
			<input class="inputbutton" type="reset" value="${btn_cancel}">
			<input class="inputbutton" type="button" value="${btn_input_cancel}"
				onclick="location='userloginform.net'">
			</th>
		</tr>
	</table>
</form> 

