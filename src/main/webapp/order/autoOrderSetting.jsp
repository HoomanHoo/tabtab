<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="${path}design.css" rel="stylesheet" type="text/css">
<script src="${path}autoOrderSettingScript.js" defer></script>
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
	  			<div class="row" style="height:5vh; margin-bottom:2px">
	  				<c:import url="/template/topMenu.jsp"/>
	  			</div>
	  			<div class="row">
					<div id="list" class="col-sm-4" style="height:73vh">
						<div class="row">
							<div class="col">${textMediName }</div>
							<div class="col">${textChiefIngre }</div>
						</div>
						<c:forEach var="dto" items="${dtos }">
							<div class="row">
								<input class="col" type="text" name="mediName" value="${dto.medi_name }" readonly>
								<input class="col" type="text" id="${dto.medi_name }2" value="${dto.chief_ingre }" readonly>
							</div>
							<input type="hidden" id="${dto.medi_name }3" value="${dto.medi_code }">
							<input type="hidden" id="${dto.medi_name }4" value="${dto.supply_value }">
						</c:forEach>
					</div>
					<div id="selectList" class="col-sm-8" style="float:rignt">
						<form name="autoOrderSetList" method="post" action="autoordersettingpro.net">
							<div id="upperList" class="row" style="text-align:center">
								<div class="col">${textMediName }</div>
								<div class="col">${triggerQuan }</div>
								<div class="col">${aoQuan }</div>
								<div class="col">${textPrice }</div>	
							</div>
							<div id="newList" style="height:70vh">
							</div>
							<div id="buttonArea" class="row">
								<div class="col">
								</div>
								<div class="col">
									<input type="submit" class="btn btn-outline-secondary" value="${btnSetting }">
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