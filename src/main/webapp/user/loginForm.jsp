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
		<nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
		    <c:import url="/template/header.jsp"/>
  		</nav>
  		<div class="row" style="margin-right:0; height:82vh">
  			<div class="col">
  			</div>
  			<div class="col" style="text-align:center">
				<c:if test="${sessionScope.mem_code eq null}">
				<!-- 세션이 없음>로그인X -->
					<form method="post" action="userloginpro.net" name="usermainform" onsubmit="return usermaincheck()">
						<div style="display: flex; justify-content: center;">
							<table>
								<tr>
									<th colspan="2"> ${msg_main}</th><!-- 안내메세지 -->
								</tr>
								<tr>
									<th> ${str_email}</th>
									<td> <input class="input" type="text" name="email" maxlength="50" autofocus> </td>
								</tr>
								<tr>
									<th> ${str_passwd}</th>
									<td> <input class="input" type="password" name="password" maxlength="30"></td>
								</tr>
								<tr>
									<th colspan="4" >
									<div class="d-grid gap-2">
										<input class="btn btn-outline-primary " type="submit" value="${btn_login}">
									</div>
									</th>
								</tr>
								<tr>
									<th colspan="2" style="text-align:center">
										<input class="btn btn-outline-secondary" type="button" value="${btn_input}"
											onclick="location='usersignupform.net'"><!-- 가입누르면 넘어가는데 -->
										<input class="btn btn-outline-secondary" type="button" value="${btn_passwd}"
											onclick="location='userpasswd.net'">
									</th>
								</tr>
							</table>
						</div>
					</form>
				</c:if>
				<c:if test="${sessionScope.mem_code ne null}">
					<c:redirect url="usermypage.net"/>
				</c:if>
			</div>
			<div class="col">
			</div>
		</div>
	  <div class="container">
	  	<c:import url="/template/footer.jsp"/>
	  </div>
	</main>
</body>
</html>