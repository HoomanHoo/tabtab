<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="${path}design.css" rel="stylesheet" type="text/css">
<script src="${path}jquery-3.6.4.js"></script>
<script src="${path}sellingPageScript.js" defer></script>
<title>TabTab</title>
</head>
<body>
	<main>
		<nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
		    <c:import url="/template/header.jsp"/>
  		</nav>
  		<div class="row" style="margin-right:0">
	  		<div class="col-sm-2" style="margin-right:0">
			    <c:import url="/template/sidebar.jsp"/>
	  		</div>
	  		<div class="col-sm-10">
	  			<div class="col">
	  				<div class="row" style="text-align:center">
	  					<div class="col">제품명</div>
	  					<div class="col">판매가</div>
	  					<div class="col-1">현재 수량</div>
	  				</div>
	  				<c:forEach var="dto" items="${dtos }">
	  					<div class="row">
							<input type="text" id="${dto.medi_name }" name="mediName" class="col" value="${dto.medi_name }" readonly>
							<input type="text" id="${dto.medi_name }2" class="col" value="${dto.selling_price }" readonly>
							<input type="text" id="${dto.medi_name }3" class="col-1" value="${dto.rt_inven }" readonly>
							<input type="hidden" id="${dto.medi_name }4" value="${dto.medi_code }">					
	  					</div>
	  				</c:forEach>
	  			</div>
	  			<div class="col">
	  				<div id="sellList" class="row">
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