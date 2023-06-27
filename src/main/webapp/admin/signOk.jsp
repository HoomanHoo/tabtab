<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="asetting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<script src="${path}script_admin.js"></script>
	<title>TabTab</title>
	</head>
<body>
	<main>
		<nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
		    <c:import url="/template/header.jsp?where=9"/>
  		</nav>
  		<div class="row" style="margin-right:0;" style="margin-left:50px">
			<div class="col-sm-2" style="margin-right:0">
			   <c:import url="/template/adminSidebar.jsp"/>  
	  		</div>
			<div class="col" style="margin-top:50px">
				<table class="table">
					<tr>
						<th> ${msg_signup_o} </th>
					</tr>
					<tr>
						<th colspan="3">
						<div style="text-align:center">
							<input class="btn btn-primary" type="button" value="${btn_ok}"
								onclick="location='adminsignuplist.net?pageNum=1'">
						</div>
						</th>
					</tr>
				</table>
			</div>
		</div>
	<div class="container">
	  	<c:import url="/template/footer.jsp"/>
	  </div>
	</main>
</body>
</html>