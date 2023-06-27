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
			   <c:import url="/template/adminSidebar.jsp?where=9"/>  
	  		</div>
			<div class="col" style="margin-top:50px">
				<form method="post" action="adminsignupinputpro.net" name="signin">
					<input type="hidden" name="mem_code" value="${dto.mem_code}">
					<input type="hidden" name="email" value="${dto.email}">
					<table class="table table-bordered">
						<tr>
							<th> ${str_prl_img}</th>
							<td><img src=" ${dto.pr_img}" alt="사업자등록증"></td>
                        	<td><img src=" ${dto.pl_img}" alt="약사면허증"></td>
						</tr>
						<tr>
							<th> ${str_semail} </th>
							<td> ${dto.email} </td>
						</tr>
						<tr>
							<th> ${str_name}</th>
							<td> <input class="form-control" type="text" name="auname" maxlength="50"></td>
						</tr>
						<tr>
							<th> ${str_pr_num}</th>
							<td> <input class="form-control" type="text" name="pr_num" maxlength="40"></td>
						</tr>
						<tr>
							<th> ${str_p_name}</th>
							<td> <input class="form-control" type="text" name="p_name" maxlength="60"></td>
						</tr>
						<tr>
							<th> ${str_p_address}</th>
							<td> <input class="form-control" type="text" name="p_address" maxlength="300"></td>
						</tr>
						<tr>
							<th colspan="2">
							<div style="text-align:center">
								<input class="btn btn-outline-primary" type="submit" value="${btn_sok}">
								<input class="btn btn-outline-secondary" type="button" value="${btn_cb_list}"
									onclick="location='adminsignuplist.net?pageNum=${pageNum}'">
							</div>
							</th>
						</tr>
					</table>
				</form>
			</div>
		</div>
	  <div class="container">
	  	<c:import url="/template/footer.jsp"/>
	  </div>
	</main>
</body>
</html>