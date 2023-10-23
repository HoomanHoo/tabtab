<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<link href="${path}design.css" rel="stylesheet" type="text/css">
		<script src="${path}jquery-3.6.4.js"></script>
		<script src="${path}orderRequestScript.js" defer></script>
		<meta charset="UTF-8">
		<title>TabTab</title>
	</head>
	<body>
		<main>
			<nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
			    <c:import url="/template/header.jsp"/>
	  		</nav>
	  		<div class="row" style="margin-right:0">
		  		<div class="col-sm-2" style="margin-right:0">
				   <c:import url="/template/adminSidebar.jsp"/>  
		  		</div>
		  		<div class="col">
			  		<div class="row">
			  			<div class="col">
			  				<h4>발주 요청</h4>
			  			</div>
			  		</div>
			  		<div class="row">
				  		<div class="col" id="list" style="height:73vh; text-align:center">
							<div class="row">
								<div class="col">${textPName }</div>
								<div class="col">${orderNumber }</div>
								<div class="col">${orderDate }</div>
								<div class="col">
								</div>
							</div>
							<c:forEach var="dto" items="${dtos}">
							<c:set var="orderDate">
								<fmt:formatDate value="${dto.o_date}" pattern="yyyy-MM-dd"/>
							</c:set>
								<div class="row">
									<div class="col">${dto.p_name}</div>
									<div class="col">${dto.o_num}</div>
									<div class="col">${orderDate}</div>
									<input type="button" id="${dto.o_num }" class="col btn btn-outline-secondary" name="btn" value="${btnDetailRequest}">
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
	  		</div>
		  <div class="container">
		  	<c:import url="/template/footer.jsp"/>
		  </div>
		</main>
	</body>
</html>