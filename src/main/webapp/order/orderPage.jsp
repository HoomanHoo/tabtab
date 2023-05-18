<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
<head>
<head>
<!-- <link href="${path}styles.css" rel="stylesheet" type="text/css"> -->
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
				<td><input type="button" value="${btnOrderHistory }"></td>
		</table>
	</div>
	<div id="content">
		<article>
		<div id="wrapper" style="float:left">
			<form class="mediList" name="sList">
				<div id="selectlist" >
				<table>
					<tr>
						<td>${textMediName}</td>
						<td>${textChiefIngre}</td>
					</tr>
					<c:set var="i" value="${1 }"/>
	 				<c:forEach var="dto" items="${dtos}">
						<tr>
							<td><input type="text" name="name"value="${dto.medi_name}" readonly></td>
							<td><input type="text" name="ingre${i}"value="${dto.chief_ingre}" readonly></td>
						</tr>
						<input type="hidden" id="${dto.medi_name}" value="${dto.supply_value}">
					<c:set var="i" value="${i + 1}"/>
					</c:forEach> 
				</table>
				</div>
			</form>
		</div>
		<div id="wrapper" style="float:right">
			<form name="selectList" method="post" action="orderpagepro.net" onsubmit="return checkOrderList()">
			<div id="orderList">
				<table>
					<tr>
						<td>${textmediName}</td>
						<td>${textQuantity}</td>
						<td>${textPrice}</td>
					</tr>
				</table>
			</div>
				
				<div id="buttonArea">
					<input type="submit" value="${btnOrder}">
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
$(document).ready(
		function(){
			$("input[name=name]").on("click", function(){
				var tval = this.value;
				var hval = document.getElementById(tval).value; 
				console.log(tval);
				console.log(hval);
				$("#orderList").append("<input type='text' name='mediName' value='" + this.value + "' readonly>"
					+ "<input type='number' id='" + this.value + "' name='orderQuan' value='1'>"
					+ "<input type='text' id='" + this.value + "' name='supplyPrice' value='" + hval + "' readonly><br>");
			});
			
			$("input[name=orderQuan]").on("change", function(){
				var tid = this.id;
				console.log(tid);
				document.getElementById(tid).value = document.getElementById(tid).value * this.value;
			});
			$("input[name=orderQuan]").on("input", function(){
				var tid = this.id;
				console.log(tid);
				document.getElementById(tid).value = document.getElementById(tid).value * this.value;
			});
		
		
		});
</script>
</html>