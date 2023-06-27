<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TabTab</title>
<link rel="stylesheet" type="text/css" href="${project}style_search.css">
<script src="${project}script_search.js"></script>   
<script src="${path}jquery-3.6.4.js"></script>
</head>
<body>
	<main>
		<nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
		    <c:import url="/template/header.jsp"/>
  		</nav>
  		<div class="row" style="margin-right:0">
	  		<div class="col-sm-2" style="margin-right:0">
			    <c:import url="/template/sidebar.jsp"/>
			  <%--  <c:import url="/template/adminSidebar.jsp"/>  --%>
	  		</div>
	  		<div class="col-sm-10" style="margin-right:0">
	  			<div class="container_search">
				    <div id="searchbox">
				    <form id="searchform" action="searchlist.net" method="POST" onsubmit="return searchcheck()">       
				        <fieldset>
				            <label>검색분류</label>
					        <select name="type" id="type">
					            <option value="0">검색구분</option>
					            <option value="1">약품명</option>
					            <option value="2">주성분</option>
					        </select>
					        <label>검색어</label>
					        <input type="text" name="keyword" id="keyword" value="${param.keyword}" placeholder="검색어를 입력하세요" autofocus>              
					        <input class="btn btn-search" type="submit" value="검색"/>       
				        </fieldset>
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



















