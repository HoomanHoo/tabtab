<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="setting.jsp"%>
<link href="${project}style.css" rel="stylesheet" type="text/css">
<script src="${project}script_admin.js"></script>

<h2>${admin_page_login}</h2>

<c:if test="${sessionScope.memEmail == null}">
<!-- 세션이 없음>로그인X -->
	<form method="post" action="adminloginpro.net" name="mainform" onsubmit="return maincheck()">
		<table>
			<tr>
				<th colspan="2"> ${msg_main}</th><!-- 안내메세지 -->
			</tr>
			<tr>
				<th> ${str_email}</th><!-- 똑같이 입력할 수 없으니 방 하나에 써주고 나중에 그 방안만 고치면 다 고쳐지게 -->
				<td> <input class="input" type="text" name="email" maxlength="30" autofocus> </td>
			</tr>
			<tr>
				<th> ${str_passwd}</th>
				<td> <input class="input" type="password" name="password" maxlength="30"></td>
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputbutton" type="submit" value="${btn_login}">
					<input class="inputbutton" type="button" value="${btn_input}"
						onclick="location='admininputform.net'"><!-- 가입누르면 넘어가는데 -->
				</th>
			</tr>
		</table>
	</form>
</c:if>
<c:if test="${sessionScope.memEmail != null}">
	<table>
		<tr>
			<th> <span>${sessionScope.memEmail}</span>${msg_sub}</th>
		</tr>
		<tr>
			<td align="center">	
				<input class="inputbutton" type="submit" value="${btn_ok}"
					onclick="location='adminorderform.net'">
					<!-- 1에서는 파일이름을 직접줘서 경로가 없으면 에러가 났는데 2에서는 요청으로 돌려서 처리불가 요청입니다~로 뜸-->
			</td>
		</tr>
	</table>
</c:if>

