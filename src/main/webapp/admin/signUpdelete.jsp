<%@page import="admin.AdminDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<script src="${project}script_admin.js"></script>

<h2 style="text-align:center">${admin_signup_delete}</h2>

<c:if test="${result eq 1}">
<form method="post" action="adminsignupdelete.net" name="signupdelete" 
		onsubmit="return deleteinfo()">
		<table>
			<tr>
				<th >${msg_signup_x}</th>
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputbutton" type="submit" value="${btn_sok_cancel}">
					<input class="inputbutton" type="button" value="${btn_cancel}"
						onclick="self.close()">
				</th>
			</tr>
		</table>
	</form>
</c:if>




    