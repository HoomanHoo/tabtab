<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="${path}design.css" rel="stylesheet" type="text/css">
<script src="${path}sellingPageScript.js" defer></script>
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
	  		<div class="col-sm-10">
	  			<div class="row">
		  			<div class="col-sm-5">
			  			<div  style="height:70vh">
			  				<div class="row" style="text-align:center">
			  					<div class="col">${textMediName }</div>
			  					<div class="col">${textSellPrice }</div>
			  					<div class="col-2">${textNowQntity }</div>
			  				</div>
				  				<div id="invenList">
					  				<c:forEach var="dto" items="${dtos }">
					  					<div id="list" class="row" style="text-align:center">
											<input type="text" name="mediName" class="col" value="${dto.medi_name }" readonly>
											<input type="text" id="${dto.medi_name }2" class="col" value="${dto.selling_price }" readonly>
											<input type="text" id="${dto.medi_name }3" class="col-2" value="${dto.rt_inven }" readonly>
											<input type="hidden" id="${dto.medi_name }4" value="${dto.medi_code }">					
					  					</div>
					  				</c:forEach>
				  				</div>
			  			</div>
		  			</div>
	  				<div class="col">
		  				<div class="row" style="text-align:center">
		  					<div class="col">${textMediName }</div>
		  					<div class="col-2">${textQuantity }</div>
		  					<div class="col">${textRealPrice }</div>
		  					<div class="col"></div>
		  				</div>
		  				<div id="sellList" style="height:68vh">
		  				</div>
		  				<div class="row">
		  					<input type="text" id="allPrice" value="합계: 0원" readonly>
		  				</div>
		  				<div id="buttonArea" class="row">
		  					<div class="col">
		  					</div>
		  					<input type="button" id="btnSell" class="col" value="${btnSell }">
		  					<input type="button" id="btnCancel" class="col" value="${btnCancel }">
		  					<div class="col">
		  					</div>
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