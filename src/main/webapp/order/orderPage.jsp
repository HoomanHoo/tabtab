<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
<head>
<head>
 <link href="${path}design.css" rel="stylesheet" type="text/css">
<script src="${path}jquery-3.6.4.js"></script>
<script src="${path}orderPageScript.js" defer></script>
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
				<div id="selectDiv">${textMediName}</div>
				<div id="selectDiv">${textQuantity}</div>
				<div id="selectDiv">${textPrice}</div><br>
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
//<!--

		//-->
</script>
</html>