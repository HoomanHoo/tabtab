<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="asetting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<script src="${path}script_admin.js"></script>
<html>
	<head>
	<meta charset="UTF-8">
	<script src="${path}script_admin.js"></script>
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
  			<div class="col">
				<form method="post" action="admininputpro.net" name="inputform"
				 	onsubmit="return inputcheck()">
				 	<input type="hidden" name="check" value="0">
					<table class="table">
						<tr>
							<th colspan="2" style="text-align:center"> ${msg_input}</th>
						</tr>
						<tr>
							<th> ${str_name}</th>
							<td> <input class="form-control" type="text" name="name" maxlength="50"></td>
						</tr>
						<tr>
							<th> ${str_email}</th>
							<td>
							<div class="input-group">
								<input class="form-control" type="text" name="email" maxlength="50"
									style="width:100px">
								<button class="btn btn-outline-secondary" type="button" onclick="confirmemail()">${btn_confirm}</button>
							</div>
							</td>
						</tr>
						<tr>
							<th> ${str_passwd}</th>
							<td> <input class="form-control" type="password" name="password" maxlength="30"></td>
						</tr>
						<!-- 회사명supplier_name -->
						<tr>
							<th> ${str_supplier_name } </th>
							<td> <input class="form-control" type="text" name="supplier_name" maxlength="30"></td>
						</tr>
						<tr>
							<th colspan="2">
							<input class="btn btn-outline-secondary" type="submit" value="${btn_input}">
							<input class="btn btn-outline-secondary" type="reset" value="${btn_cancel}">
							<input class="btn btn-outline-secondary" type="button" value="${btn_input_cancel}"
								onclick="location='adminloginform.net'">
							</th>
						</tr>
					</table>
				</form>
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