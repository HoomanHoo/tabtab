<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="${path}design.css" rel="stylesheet" type="text/css">
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
	  		<div class="col-sm-10" style="margin-right:0">
	  			<div class="row" style="height:5vh">
	  				<c:import url="/template/topMenu.jsp"/>
	  			</div>
	  			<div class="row" style="text-align:center">
	  				<div class="col">${textMediName }</div>
	  				<div class="col">${triggerQuan }</div>
	  				<div class="col">${aoQuan }</div>
	  				<div class="col">${textPrice }</div>
	  			</div>
				<c:forEach var="dto" items="${dtos }">	
					<div id="list" class="row" style="text-align:center">
						<div class="col">${dto.medi_name }</div>
						<div class="col">${dto.trigger_quan }</div>
						<div class="col">${dto.ao_quan }</div>
						<div class="col">${dto.supply_value }</div>
					</div>
				</c:forEach>
				<div class="row" style="text-align:center">
					<div class="col">
					</div>
					<div class="col">
						<input type="button" class="btn btn-outline-secondary" name="btnOrderSetting" value="${btnSetAutoOrder }">
					</div>
					<div class="col">
					</div>	
 				</div>
  			</div>
  		</div>
	  <div class="container">
	  	<c:import url="/template/footer.jsp"/>
	  </div>
	</main>
</body>
<script type="text/javascript">

	let btnSetAutoOrder = document.querySelector("input[name=btnOrderSetting]");
	btnSetAutoOrder.addEventListener("click", send);
	
	function send(){
		window.location.href = "autoordersetting.net";
	}

</script>
</html>