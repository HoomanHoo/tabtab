<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<link href="${path}design.css" rel="stylesheet" type="text/css">
		<script src="${path}orderCheckDetailScript.js" defer></script>
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
		  		<div class="col-sm-10" style="margin-right:0">
		  			<div class="row" style="height:5vh">
		  				<c:import url="/template/topMenu.jsp"/>
		  			</div>
		  			<div class="row" style="text-align:center">
						<div class="col">${orderNumber}</div>
						<div class="col">${textMediName}</div>
						<div class="col">${textQuantity}</div>
						<div class="col">${textPrice}</div>
						<div class="col">${textVariation}</div>
					</div>
					<div id="list" style="height:70vh; text-align:center">
		 				<c:forEach var="dto" items="${dtos}">
		 				<c:if test="${dto.vari_code eq 1}">
		 					<c:set var="variation" value="${textOtc }"/>
		 				</c:if>
		 				<c:if test="${dto.vari_code eq 2}">
		 					<c:set var="variation" value="${textEtc }"/>
		 				</c:if>
							<div class="row" style="height:24px">
								<input type="text" class="col" name="orderNumber" value="${dto.o_num }" readonly> 
								<input type="text" class="col" name="mediName" value="${dto.medi_name}" readonly>
								<input type="text" class="col" name="orderQuan" value="${dto.order_quan}" readonly>
								<input type="text" class="col" name="eachSupplyValue" value="${dto.each_supply_value}" readonly>
								<input type="text" class="col" name="variation" value="${variation}" readonly>
							</div>
						</c:forEach>  
					</div>
					<div class="row">
						<div class="col">
						</div>
						<input type="button" id="btnBack" class="col btn btn-outline-secondary" value="${btnBack }">
						<div class="col">
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