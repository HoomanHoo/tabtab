<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
<head>
<head>
<link href="${path}design.css" rel="stylesheet" type="text/css">
<script src="${path}script.js"></script>
<script src="${path}jquery-3.6.4.js"></script>
<title>Insert title here</title>
</head>
<body>
	<header>
		<c:import url="http://localhost:8080/tabtab/header.net?where=5"></c:import>  
	</header>
	<div id="sidebar">
		<nav>
			<c:import url="http://localhost:8080/tabtab/sidebar.net"/>
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
		<article>
			<div id="pageInformation" style="float:left">
				<b>${orderHistory}</b>
			</div>
			<div id="selectBoxDiv" style="float:right">
				<form name="periodSet">
					<select id="setPeriod" >
						<option value="1w">${setOneWeek}</option>
						<option value="1m">${setOneMonth}</option>
						<option value="3m" selected>${setThreeMonth}</option>
					</select>
				</form>
			</div>
			<br>
			<div id="wrapper">
				<form class="historyList" name="hList">
					<div id="historylist">
					<table>
						<tr>
							<td>${orderDate}</td>
							<td>${orderNumber}</td>
							<td>${sumOrderQuan}</td>
							<td>${sumSupplyValue}</td>
							<td>${orderSupplier}</td>
							<td>${orderMemo}</td>
							<td>${textDeliveryState}</td>
						</tr>
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
							<tr>
								<td><input type="text" name="${orderDate }1" value="${orderDateView }" readonly> </td>
								<td><a href = "orderhistorydetail.net?onum=${dto.o_num}&&delistate=${dto.d_code}"><input type="text" name="${orderDate }2" value="${dto.o_num}" readonly></a></td>
								<td><input type="text" name="${orderDate }3" value="${dto.sum_order_count}" readonly></td>
								<td><input type="text" name="${orderDate }4" value="${dto.sum_supply_value}" readonly></td>
								<td><input type="text" name="${orderDate }5" value="${dto.supplier_name}" readonly></td>
								<td><input type="text" name="${orderDate }6" value="${dto.memo}" readonly></td>
								<td><input type="text" name="${orderDate }7" value="${deliState }" readonly>
							</tr>
						</c:forEach>  
					</table>
					</div>
				</form>
			</div>
		
		
		</article>
	</div>
	<div id="footer">
		<footer>
	    	<c:import url="http://localhost:8080/tabtab/footer.net"></c:import>  
	    </footer>	
	</div>
	
	
</body>
<script type="text/javascript">
	//<!--
	
	//$('input[name=test]').prop('type', "button"); // 자바스크립트로 input type 속성 변경
	
	var element = document.querySelector("#setPeriod");
	var oDates = document.querySelectorAll("input[name=oDate]");
	
	element.addEventListener("change", calc); 
	
	function calc(event){
		var date = new Date();
		var settedPeriod = element.value;
		
		if(settedPeriod == "1w"){
			date.setDate(date.getDate() - 7);
			console.log(date);
			
			for (var i = 0; i < oDates.length; i++){
				var oDate = new Date(oDates[i].value);
				
				console.log(oDate);
				
				if(oDate < date){
					console.log(oDate);
					var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
					console.log(name + "삭제");
					$("input[name=" + name + "1]").prop('type', "hidden");
					$("input[name=" + name + "2]").prop('type', "hidden");
					$("input[name=" + name + "3]").prop('type', "hidden");
					$("input[name=" + name + "4]").prop('type', "hidden");
					$("input[name=" + name + "5]").prop('type', "hidden");
					$("input[name=" + name + "6]").prop('type', "hidden");
					$("input[name=" + name + "7]").prop('type', "hidden");
				}
				else{
					var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
					console.log(name + "삭제");
					$("input[name=" + name + "1]").prop('type', "text");
					$("input[name=" + name + "2]").prop('type', "text");
					$("input[name=" + name + "3]").prop('type', "text");
					$("input[name=" + name + "4]").prop('type', "text");
					$("input[name=" + name + "5]").prop('type', "text");
					$("input[name=" + name + "6]").prop('type', "text");
					$("input[name=" + name + "7]").prop('type', "text");
				}
			}
		}
		else if(settedPeriod == "1m"){
			date.setDate(date.getDate() - 30);
			console.log(date);
			
			for (var i = 0; i < oDates.length; i++){
				var oDate = new Date(oDates[i].value);
				
				if(oDate < date){
					console.log(oDate);
					var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
					console.log(name + "삭제");
					$("input[name=" + name + "1]").prop('type', "hidden");
					$("input[name=" + name + "2]").prop('type', "hidden");
					$("input[name=" + name + "3]").prop('type', "hidden");
					$("input[name=" + name + "4]").prop('type', "hidden");
					$("input[name=" + name + "5]").prop('type', "hidden");
					$("input[name=" + name + "6]").prop('type', "hidden");
					$("input[name=" + name + "7]").prop('type', "hidden");
				}
				else{
					var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
					console.log(name + "삭제");
					$("input[name=" + name + "1]").prop('type', "text");
					$("input[name=" + name + "2]").prop('type', "text");
					$("input[name=" + name + "3]").prop('type', "text");
					$("input[name=" + name + "4]").prop('type', "text");
					$("input[name=" + name + "5]").prop('type', "text");
					$("input[name=" + name + "6]").prop('type', "text");
					$("input[name=" + name + "7]").prop('type', "text");
				}
			}
		}
		else if(settedPeriod == "3m"){
			date.setDate(date.getDate() - 90);
			console.log(date);
			
			for (var i = 0; i < oDates.length; i++){
				var oDate = new Date(oDates[i].value);
				
				if(oDate < date){
					console.log(oDate);
					var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
					console.log(name + "삭제");
					
					$("input[name=" + name + "1]").prop('type', "hidden");
					$("input[name=" + name + "2]").prop('type', "hidden");
					$("input[name=" + name + "3]").prop('type', "hidden");
					$("input[name=" + name + "4]").prop('type', "hidden");
					$("input[name=" + name + "5]").prop('type', "hidden");
					$("input[name=" + name + "6]").prop('type', "hidden");
					$("input[name=" + name + "7]").prop('type', "hidden");
				}
				else{
					var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
					console.log(name + "삭제");
					$("input[name=" + name + "1]").prop('type', "text");
					$("input[name=" + name + "2]").prop('type', "text");
					$("input[name=" + name + "3]").prop('type', "text");
					$("input[name=" + name + "4]").prop('type', "text");
					$("input[name=" + name + "5]").prop('type', "text");
					$("input[name=" + name + "6]").prop('type', "text");
					$("input[name=" + name + "7]").prop('type', "text");
				}
			}
		}
		
	}
	//-->
	</script>
</html>