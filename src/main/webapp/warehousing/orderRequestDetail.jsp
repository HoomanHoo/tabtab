<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		
		<meta charset="UTF-8">
		<link href="${path}orderRequestDetail.css" rel="stylesheet" type="text/css">
		<script src="${path}jquery-3.6.4.js"></script>
		<script src="${path}orderRequestDetailScript.js" defer></script>
		<title>Insert title here</title>
	</head>
<body>
<form action="detailorderrequestpro.net" method="post">
<input type="hidden" name="oNum" value="${o_num}">
	<table>
		<tr>
			<td>${textMediName }</td>			
			<td>${textDeliveryQuantity }</td>
			<td>${textPrice }</td>
			<td>${textOrderQuantity }</td>
			<td>${textDeliveryPrice }</td>
			<td>${textRemarks }</td>
		</tr>	
		<c:forEach var="dto" items="${dtos }">
			<tr>
				<td>${dto.medi_name}</td>
				<td>${dto.order_quan }</td>
				<td>${dto.supply_values}</td>
				<td><input type="number" id="${dto.medi_name}" name="dwQuan" value="${dto.order_quan}" min="0" max="${dto.order_quan }"></td>
				<td><input type="text" id="${dto.medi_name}2" name="dwSupplyValue" value="${dto.supply_values}" readonly></td>
				<td><input type="text" id="${dto.medi_name}3" name="remarks"></td>
			</tr>
			<input type="hidden" id="${dto.medi_name}4" name="mediCode" value="${dto.medi_code}">
			<input type="hidden" id="${dto.medi_name}5" name="orderQuan" value="${dto.order_quan}">
			<input type="hidden" id="${dto.medi_name}6" name="supplyValues" value="${dto.supply_values}">
		</c:forEach>
		<tr>
			<td colspan="6">
				<c:if test="${d_code eq 10}">
					<input type="submit" value="${btnDelivery }">
				</c:if>
				<input type="button" name="back" value="${btnBack }">
			</td>
		</tr>
	</table>
	
</form>
</body>
</html>