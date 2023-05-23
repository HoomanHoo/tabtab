<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link href="${project}style.css" rel="stylesheet" type="text/css">
<script src="${project}script_admin.js"></script>

<h2> ${page_input}</h2>

<form method="post" action="admininputpro.net" name="inputform"
 	onsubmit="return inputcheck()">
 	<input type="hidden" name="check" value="0">
	<table>
		<tr>
			<th colspan="2"> ${msg_input}</th>
		</tr>
		<tr>
			<th> ${str_name}</th>
			<td> <input class="input" type="text" name="name" maxlength="50"></td>
		</tr>
		<tr>
			<th> ${str_email}</th>
			<td>
			<input class="input" type="text" name="email" maxlength="50"
				style="width:100px">
			<input class="inputbutton" type="button" value="${btn_confirm}"
					onclick="confirmemail()">
			</td>
		</tr>
		<tr>
			<th> ${str_passwd}</th>
			<td> <input class="input" type="password" name="password" maxlength="30"></td>
		</tr>
		
		<!-- 관리자냐 약사냐  -->
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
		<!-- 회사명supplier_name -->
		<tr>
			<th> ${str_supplier_name } </th>
			<td> <input class="input" type="text" name="supplier_name" maxlength="30"></td>
		</tr>
		<tr>
			<th colspan="2">
			<input class="inputbutton" type="submit" value="${btn_input}">
			<input class="inputbutton" type="reset" value="${btn_cancel}">
			<input class="inputbutton" type="button" value="${btn_input_cancel}"
				onclick="location='adminloginform.net'">
			</th>
		</tr>
	</table>
</form>
		
		
		
		
		<!--  
		
		<tr>
			<th> ${str_id}</th>
			<td> <input  class="input" type="text" name="id" maxlength="30" autofocus>
				<input class="inputbutton" type="button" value="${btn_confirm}"
					onclick="confirmid()">
			</td>
		</tr>
		<tr>
			<th> ${str_jumin}</th>
			<td>
			<input class="input" type="text" name="jumin1" maxlength="6" 
				style="width:50px" onkeyup="nextjumin2()">
			- <input class="input" type="text" name="jumin2" maxlength="7" 
				style="width:60px"onkeyup="nexttel1()">
			</td>
		</tr>
		<tr>
			<th> ${str_tel}</th>
			<td>
			<input class="input" type="text" name="tel1" maxlength="3"
				style="width:30px" onkeyup="nexttel2()">
			- <input class="input" type="text" name="tel2" maxlength="4"
				style="width:40px"onkeyup="nexttel3()">
			- <input class="input" type="text" name="tel3" maxlength="4"
				style="width:40px"onkeyup="nextemail1()">
			</td>
		</tr>
		<tr>
			<th> ${str_email}</th>
			<td>
			<input class="input" type="text" name="email1" maxlength="25"
				style="width:100px">
			@
			<select name="email2">
				<option value="0">직접입력 </option>
				<option value="daum.net">다음 </option>
				<option value="naver.com">네이버 </option>
				<option value="gmail.com">구글</option>
				<option value="nate.com">네이트 </option>
			</select>
			</td>
		</tr>
		-->