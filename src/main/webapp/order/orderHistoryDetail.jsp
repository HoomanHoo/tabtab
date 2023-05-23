<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
<head>
<head>
<link href="${path}design.css" rel="stylesheet" type="text/css">
<script src="${path}orderHistoryDetail.js" defer></script>
<script src="${path}jquery-3.6.4.js"></script>
<title>Insert title here</title>
</head>
<body>
	<header>
		<c:import url="/template/header.jsp"></c:import>  
	</header>
	<div id="sidebar">
		<nav>
			<c:import url="/template/sidebar.jsp"></c:import>
		</nav>
	</div>
	<div id="topMenu">
		<table>
			<tr>
				<td><input type="button" value="${btnSetAutoOrder}"></td>
				<td><input type="button" value="${btnSetOrder }"></td>
				<td><input type="button" value="${btnCheckOrder }"></td>
				<td><input type="button" value="${btnOrderHistory }" onclick="url:orderhistory.net"></td>
		</table>
	</div>
	<div id="content">
	<input type="hidden" name="oNum" value="${oNum }">
		<article>
			<div id="pageInformation" style="float:left">
				<b>${orderHistory}</b>
			</div>
			<br>
			<div id="invenWrapper" style="float:left">
				<form name="iList">
				현재 재고
					<table>
						<tr>
							<td>${textMediName }</td>
							<td>${textQuantity }</td>
						</tr>
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
				</form>
			</div>
			<div id="wrapper" style="float:right">
				<form class="historyList" name="hList">
					<div id="historylist">
					발주 내역
					<table>
						<tr>
							<td>${orderNumber}</td>
							<td>${textMediName}</td>
							<td>${textQuantity}</td>
							<td>${textPrice}</td>
							<td>${textVariation}</td>
							<td></td>
						</tr>
		 				<c:forEach var="dto" items="${dtos}">
		 				<c:if test="${dto.vari_code eq 1}">
		 					<c:set var="variation" value="${textOtc }"/>
		 				</c:if>
		 				<c:if test="${dto.vari_code eq 2}">
		 					<c:set var="variation" value="${textEtc }"/>
		 				</c:if>
							<tr>
								<td><input type="text" name="orderNumber" value="${dto.o_num }" readonly> </td>
								<td><input type="text" name="mediName" value="${dto.medi_name}" readonly></td>
								<td><input type="text" name="orderQuan" value="${dto.order_quan}" readonly></td>
								<td><input type="text" name="eachSupplyValue" value="${dto.each_supply_value}" readonly></td>
								<td><input type="text" name="variation" value="${variation}" readonly></td>
							</tr>
							<input type="hidden" name="mediCode" value="${dto.medi_code}">
						</c:forEach>  
					</table>
					</div>
				</form><br>
				<div>
					<c:if test="${deliState eq 11 }">
						<input type="button" id="warehousing" value="${btnWarehousing }">
					</c:if>
					<input type="button" id="back" value="${btnBack }">
				</div>
			</div>
			
		
		</article>
	</div>
	<div id="footer">
		<footer>
	    	<c:import url="/template/footer.net"></c:import>  
	    </footer>	
	</div>
</body>
</html>