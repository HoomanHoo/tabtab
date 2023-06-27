<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="${path}design.css" rel="stylesheet" type="text/css">
		<script src="${path}jquery-3.6.4.js"></script>
		<script src="${path}orderRequestDetailScript.js" defer></script>
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
	  		<div class="col" id="list" style="height:73vh; text-align:center">
				<form action="detailorderrequestpro.net" method="post">
					<input type="hidden" name="oNum" value="${o_num}">
					<div class="row">
						<div class="col">${textMediName }</div>			
						<div class="col">${textOrderQuantity }</div>
						<div class="col">${textPrice }</div>
						<div class="col">${textDeliveryQuantity }</div>
						<div class="col">${textDeliveryPrice }</div>
						<div class="col">${textRemarks }</div>
					</div>
					<c:if test="${d_code eq 10}">
						<c:forEach var="dto" items="${dtos }">
							<div class="row">
								<div class="col">${dto.medi_name}</div>
								<div class="col">${dto.order_quan }</div>
								<div class="col">${dto.supply_values}</div>
								<input type="number" id="${dto.medi_name}" class="col" name="dwQuan" value="${dto.order_quan}" min="0" max="${dto.order_quan }">
								<input type="text" id="${dto.medi_name}2" class="col" name="dwSupplyValue" value="${dto.supply_values}" readonly>
								<input type="text" id="${dto.medi_name}3" class="col form-control" name="remarks">
							
								<input type="hidden" id="${dto.medi_name}4" name="mediCode" value="${dto.medi_code}">
								<input type="hidden" id="${dto.medi_name}5" name="orderQuan" value="${dto.order_quan}">
								<input type="hidden" id="${dto.medi_name}6" name="supplyValues" value="${dto.supply_values}">
							</div>
						</c:forEach>
					</c:if>
					<c:if test="${d_code ne 10}">
						<c:forEach var="dto" items="${dtos }">
							<div class="row">
								<div class="col">${dto.medi_name}</div>
								<div class="col">${dto.order_quan }</div>
								<div class="col">${dto.supply_values}</div>
								<input type="text" id="${dto.medi_name}"  class="col" name="dwQuan" value="${dto.dw_quan}" readonly>
								<input type="text" id="${dto.medi_name}2" class="col" name="dwSupplyValue" value="${dto.dw_supply_values}" readonly>
								<input type="text" id="${dto.medi_name}3" class="col form-control" name="remarks" value="${dto.un_delivery_reason }">
							</div>
						</c:forEach>
					</c:if>
					<div class="row">
						<div class="col"></div>
						<div class="col">
							<c:if test="${d_code eq 10}">
								<input type="submit" class="btn btn-outline-secondary" value="${btnDelivery }">
							</c:if>
							<input type="button" id="back" class="btn btn-outline-secondary" value="${btnBack }">
						</div>
						<div class="col"></div>
					</div>
				</form>
			</div>
  		</div>
	  <div class="container">
	  	<c:import url="/template/footer.jsp"/>
	  </div>
	</main>
</body>
</html>