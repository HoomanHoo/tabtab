<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp"%>
<!--  <link href="${project}style.css" rel="stylesheet" type="text/css">
<script src="${project}script_admin.js"></script>
-->
<h2> ${admin_signupin}</h2>
<form method="post" action="adminsignupinputpro.net" name="signin">
	<input type="hidden" name="mem_code" value="${dto.mem_code}">
	<table border="1">
		<tr>
			<th> ${str_prl_img}</th>
			<td style="text-align:center"> ${dto.pr_img}</td>
			<td style="text-align:center"> ${dto.pl_img}</td>
		</tr>
		<tr>
			<th> ${str_semail} </th>
			<td> ${dto.email} </td>
		</tr>
		<tr>
			<th> ${str_name}</th>
			<td> <input class="input" type="text" name="auname" maxlength="50"></td>
		</tr>
		<tr>
			<th> ${str_pr_num}</th>
			<td> <input class="input" type="text" name="pr_num" maxlength="40"></td>
		</tr>
		<tr>
			<th> ${str_p_name}</th>
			<td> <input class="input" type="text" name="p_name" maxlength="60"></td>
		</tr>
		<tr>
			<th> ${str_p_address}</th>
			<td> <input class="input" type="text" name="p_address" maxlength="300"></td>
		</tr>
		<tr>
			<th colspan="2">
				<input class="inputbutton" type="submit" value="${btn_sok}">
				<input class="inputbutton" type="button" value="${btn_cb_list}"
					onclick="location='adminsignuplist.net?pageNum=${pageNum}'">
			</th>
		</tr>
	</table>
</form>

	<!-- 관리자냐 약사냐  
		<tr>
			<th> ${str_mem_desc_code}</th>
			<td> <input class="input" type="text" name="mem_desc_code" maxlength="10"></td>
		</tr>
		<tr>
			<th>${str_mem_desc_code}</th>
			<td>
			<select name="code2">
				<option value="1">약사</option>
				<option value="2">관리자</option>
			</select>
			</td>
		</tr>
		-->
		