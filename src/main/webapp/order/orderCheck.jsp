<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
	<head>
	<link href="${path}design.css" rel="stylesheet" type="text/css">
	<script src="${path}orderCheckScript.js" defer></script>
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
	  				<div class="col">${orderDate }</div>
	  				<div class="col">${orderNumber }</div>
	  				<div class="col">${sumOrderQuan }</div>
	  				<div class="col">${sumSupplyValue }</div>
	  				<div class="col">${orderSupplier }</div>
	  				<div class="col">${textDeliveryState}</div>
	  				<div class="col"></div>
	  			</div>
	  			<div id="list"  style="height:70vh; text-align:center">
					<c:forEach var="dto" items="${dtos}">
					<c:if test="${dto.d_code eq 10 }">
						<c:set var="deliveryState" value="${deliNotYet }"/>
					</c:if>
					<c:if test="${dto.d_code eq 11 }">
						<c:set var="deliveryState" value="${deliStart }"/>
					</c:if>
					<c:if test="${dto.d_code eq 12 }">
						<c:set var="deliveryState" value="${deliEnd }"/>
					</c:if>
					<c:set var="orderDateView">
		 					<fmt:formatDate value="${dto.o_date}" pattern="yyyy-MM-dd"/>
		 				</c:set>
						<div class="row" >
							<div class="col">${orderDateView }</div>
							<div class="col">${dto.o_num }</div>
							<div class="col">${dto.sum_order_count }</div>
							<div class="col">${dto.sum_supply_value }</div>
							<div class="col">${dto.supplier_name }</div>
							<div class="col">${deliveryState }</div>
							<input type="button" id="${dto.o_num }" name="showDetail" class="col btn btn-outline-secondary" value="${btnDetailRequest }">
						</div>
					</c:forEach>
				</div>
			</div>
  		</div>
	  <div class="container">
	  	<c:import url="/template/footer.jsp"/>
	  </div>
	</main>
</body>
</html>