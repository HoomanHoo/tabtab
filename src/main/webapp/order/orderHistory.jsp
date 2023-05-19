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
					<select name="setPeriod">
						<option value="1week">${setOneWeek}</option>
						<option value="1month">${setOneMonth}</option>
						<option value="3month">${setThreeMonth}</option>
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
						</tr>
		 				<c:forEach var="dto" items="${dtos}">
							<tr>
								<td><fmt:formatDate value="${dto.o_date}" pattern="yyyy-MM-dd" /></td>
								<td><a>${dto.o_num}</a></td>
								<td>${dto.sum_order_count}</td>
								<td>${dto.sum_supply_value}</td>
								<td>${dto.supplier_name}</td>
								<td>${dto.memo}</td>
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
</html>