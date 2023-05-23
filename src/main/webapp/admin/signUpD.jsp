<%@page import="java.text.SimpleDateFormat"%>
<%@page import="admin.AdminDataBean"%>
<%@page import="admin.AdminDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link href="${project}style.css" rel="stylesheet" type="text/css">
<script src = "${project}script_admin.js"></script>

<h2> ${admin_signupD}</h2>
<form method="post" action="adminsignupd.net" name="signupd">
	<table border="1">
		<tr>
			<th> ${str_semail} </th>
			<td> ${dto.email} </td>
			<td style="text-align:right">${dto.r_date}</td>
		</tr>
		<tr>
			<th> ${str_prl_img}</th>
			<td style="text-align:center"> ${dto.pr_img}</td>
			<td style="text-align:center"> ${dto.pl_img}</td>
		</tr>
		<tr>
			<th colspan="3">
				<input class="inputbutton" type="button" value="${btn_sok}"
					onclick="location='adminsignupinform.net?num=${dto.mem_code}&pageNum=${pageNum}'">
				<input class="inputbutton" type="submit" value="${btn_sok_cancel}"
					onclick="deletemember()">
				<input class="inputbutton" type="button" value="${btn_cb_list}"
					onclick="location='adminsignuplist.net?pageNum=${pageNum}'">
			</th>
		</tr>
	</table>
</form>

