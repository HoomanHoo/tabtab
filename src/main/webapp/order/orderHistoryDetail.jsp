<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="${path}design.css" rel="stylesheet" type="text/css">
<script src="/tabtab/misc/orderHistoryDetailScript.js" defer></script>
<script src="/tabtab/misc/jquery-3.6.4.js"></script>
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
			<div class="col-sm-10" style="margin-right:0; float:right">
				<div class="row" style="height:5vh">
	  				<c:import url="/template/topMenu.jsp"/>
	  			</div>
				<input type="hidden" name="oNum" value="${oNum }">
				<div class="row">
					<div class="col"> 현재 재고</div>
					<c:if test="${d_code eq 10 }">
						<div class="col"> 발주 내역</div>
					</c:if>
					<c:if test="${d_code ne 10 }">
						<div class="col">발주 및 배송 수량</div>
					</c:if>
				</div>
				<div class="row">
					<div id="invenWrapper" class="col-sm-3">
						<form name="iList">
							<table>
								<tr>
									<td>${textMediName }</td>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
									<td>${textQuantity }</td>
								</tr>
							</table>
							<div id="list">
								<table>
									<tbody id="default">
										<c:forEach var="inven" items="${invenDtos }">
											<tr>
												<td>${inven.medi_name}</td>
												<td>${inven.rt_inven}</td>
											</tr>
										</c:forEach>
									</tbody>
									<tbody id="newTable">
									</tbody>
								</table>
							</div>
						</form>
					</div>
					<div id="wrapper" class="col-sm-9">
						<c:if test="${d_code eq 10 }">
							<form class="historyList" name="hList">
								<div id="historylist">
								<table>
									<tr>
										<td>${orderNumber}</td>
										<td>${textMediName}</td>
										<td>${textQuantity}</td>
										<td>${textPrice}</td>
										<td>${textVariation}</td>
									</tr>
					 				<c:forEach var="dto" items="${dtos}">
					 				<c:if test="${dto.vari_code eq 1}">
					 					<c:set var="variation" value="${textOtc }"/>
					 				</c:if>
					 				<c:if test="${dto.vari_code eq 2}">
					 					<c:set var="variation" value="${textEtc }"/>
					 				</c:if>
										<tr>
											<td><input type="text" name="orderNumber" value="${oNum }" readonly> </td>
											<td><input type="text" name="mediName" value="${dto.medi_name}" readonly></td>
											<td><input type="text" name="orderQuan" value="${dto.order_quan}" readonly></td>
											<td><input type="text" name="eachSupplyValue" value="${dto.each_supply_value}" readonly></td>
											<td><input type="text" name="variation" value="${variation}" readonly></td>
										</tr>
									</c:forEach>  
								</table>
								</div>
							</form><br>
						</c:if>
						<c:if test="${d_code ne 10 }">
							<form class="historyList" name="hList">
								<div id="historylist">
									<div class="row">
										<div class="col-1" style="margin-left:0; margin-right:0; width:7%" >${orderNumber}</div>
										<div class="col" style="margin-left:0; margin-right:0">${textMediName}</div>
										<div class="col-1" style="margin-left:0; margin-right:0; width:7%">${textOrderQuantity}</div>
										<div class="col-1" style="margin-left:0; margin-right:0; width:7%">${textDeliveryQuantity}</div>
										<div class="col" style="margin-left:0; margin-right:0">${textPrice}</div>
										<div class="col" style="margin-left:0; margin-right:0">${textDeliveryPrice}</div>
										<div class="col" style="margin-left:0; margin-right:3">${textRemarks}</div>
									</div>
					 				<c:forEach var="dto" items="${dtos}">
										<div class="row">
											<input class="col-1" style="margin-left:0; margin-right:0; width:7%" type="text" name="orderNumber" value="${oNum }" readonly>
											<input class="col" style="margin-left:0; margin-right:0" type="text" name="mediName" value="${dto.medi_name}" readonly>
											<input class="col-1" style="margin-left:0; margin-right:0; width:7%" type="text" name="ordeQuan" value="${dto.order_quan}" readonly>
											<input class="col-1" style="margin-left:0; margin-right:0; width:7%" type="text" name="dwQuan" value="${dto.dw_quan}" readonly>
											<input class="col" style="margin-left:0; margin-right:0" type="text" name="supplyValues" value="${dto.supply_values}" readonly>
											<input class="col" style="margin-left:0; margin-right:0" type="text" name="dwSupplyValues" value="${dto.dw_supply_values}" readonly>
											<input class="col" style="margin-left:0; margin-right:0" type="text" name="variation" value="${dto.un_delivery_reason}" readonly>
										</div>
										<input type="hidden" name="mediCode" value="${dto.medi_code}">
									</c:forEach>  
								</div>
							</form><br>
						</c:if>
						<div class="row">
							<div class="col" ></div>
							<div class="col" >
							<c:if test="${d_code eq 11 }">
								<input type="button" id="warehousing" class="btn btn-outline-secondary" value="${btnWarehousing }">
							</c:if>
							<input type="button" id="back" class="btn btn-outline-secondary" value="${btnBack }">
							</div>
							<div class="col" ></div>
						</div>
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