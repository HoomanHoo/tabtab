<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<link href="${path}design.css" rel="stylesheet" type="text/css">
	<script src="${path}jquery-3.6.4.js"></script>
	<script src="${path}orderPageScript.js" defer></script>
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
					<div id="wrapper" class="row">
							<div id="list" class="col-sm-4" style="height:73vh">
								<div class="row">
									<div class="col" style="text-align:center">${textMediName}</div>
									<div class="col" style="text-align:center">${textChiefIngre}</div>
								</div>
								<c:set var="i" value="${1 }"/>
				 				<c:forEach var="dto" items="${dtos}">
									<div class="row">
										<input class="col" type="text" name="name"value="${dto.medi_name}" readonly>
										<input class="col" type="text" name="ingre${i}"value="${dto.chief_ingre}" readonly>
									</div>
									<input type="hidden" id="${dto.medi_name}" value="${dto.supply_value}">
								<c:set var="i" value="${i + 1}"/>
								</c:forEach> 
							</div>
							<div id="wrapper" class="col-sm-8" style="float:right">
								<form name="selectList" method="post" action="orderpagepro.net" onsubmit="return checkOrderList()">
									<div id="orderList" class="row" style="height:24px">
										<div id="selectDiv" class="col" style="text-align:center; height:24px">${textMediName}</div>
										<div id="selectDiv" class="col-2" style="text-align:center; height:24px">${textQuantity}</div>
										<div id="selectDiv" class="col" style="text-align:center; height:24px">${textPrice}</div>
										<div id="selectDiv" class="col-1" style="height:24px"></div>
									</div>
									<div id="newList" style="height:70vh">
									</div>
									<div id="buttonArea" class="row" style="float:bottom; margin-bottom:2px">
										<div class="col"></div>
										<div class="col" style="text-align:center">
											<input type="submit" class="btn btn-outline-secondary" value="${btnOrder}">
										</div>
										<div class="col">
										</div>
									</div>
								</form>
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