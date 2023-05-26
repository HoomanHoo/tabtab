<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/bootstrap.jsp" %>    
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="${path}design.css" rel="stylesheet" type="text/css">
<script src="${path}orderHistoryScript.js" defer></script>
<script src="${path}jquery-3.6.4.js"></script>
<title>Insert title here</title>
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
	  		<br>
			<div class="col-sm-10">
			<div id="selectBoxDiv" class="row">
				<div class="row" style="height:5vh">
	  				<c:import url="/template/topMenu.jsp"/>
	  			</div>
				<div class="col-11"></div>
				<div class="col-1">
					<form name="periodSet">
						<select id="setPeriod" >
							<option value="1w">${setOneWeek}</option>
							<option value="1m">${setOneMonth}</option>
							<option value="3m" selected>${setThreeMonth}</option>
						</select>
					</form>
				</div>
			</div>
			<div id="wrapper">
					<div id="list">
						<div class="row row-cols-7">
							<div class="col-1" style="text-align:center">${orderDate}</div>
							<div class="col-1" style="text-align:center">${orderNumber}</div>
							<div class="col" style="text-align:center">${sumOrderQuan}</div>
							<div class="col" style="text-align:center">${sumSupplyValue}</div>
							<div class="col" style="text-align:center">${orderSupplier}</div>
							<div class="col" style="text-align:center">${orderMemo}</div>
							<div class="col" style="text-align:center">${textDeliveryState}</div>
						</div>
		 				<c:forEach var="dto" items="${dtos}">
		 				<c:set var="orderDate">
		 					<fmt:formatDate value="${dto.o_date}" pattern="yyyyMMdd"/>
		 				</c:set>
		 				<c:set var="orderDateView">
		 					<fmt:formatDate value="${dto.o_date}" pattern="yyyy-MM-dd"/>
		 				</c:set>
		 				<input type="hidden" name="oDate" value="${orderDateView }"/>
		 				<c:if test="${dto.d_code eq 10 }">
		 					<c:set var="deliState" value="${deliNotYet }"/>
		 				</c:if>
		 				<c:if test="${dto.d_code eq 11 }">
		 					<c:set var="deliState" value="${deliStart }"/>
		 				</c:if>
		 				<c:if test="${dto.d_code eq 12 }">
		 					<c:set var="deliState" value="${deliEnd }"/>
		 				</c:if>
							<div class="row row-cols-7">
								<input type="text" class="col-1" name="${orderDate }1" value="${orderDateView }" readonly>
								<a class="col-1" href = "orderhistorydetail.net?onum=${dto.o_num}&&delistate=${dto.d_code}"><input type="text" name="${orderDate }2" value="${dto.o_num}" readonly></a>
								<input type="text" class="col" name="${orderDate }3" value="${dto.sum_order_count}" readonly>
								<input type="text" class="col" name="${orderDate }4" value="${dto.sum_supply_value}" readonly>
								<input type="text" class="col" name="${orderDate }5" value="${dto.supplier_name}" readonly>
								<input type="text" class="col" name="${orderDate }6" value="${dto.memo}" readonly>
								<input type="text" class="col" name="${orderDate }7" value="${deliState }" readonly>
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