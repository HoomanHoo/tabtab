<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>

<c:set var="where" value="${param.where }"/>
<c:if test="${where eq null }">
	<div class="container-fluid">
		<div class="col-4 my-col"></div>
			<a class="navbar-brand" href="#" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TabTab</a>
		<div class="col-5 my-col"></div>
	</div>
</c:if>
<c:if test="${where eq 1 }">
	<div class="container-fluid">
		<div class="col-4 my-col"></div>
			<a class="navbar-brand" href="#" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnMyPage }</a>
		<div class="col-5 my-col"></div>
	</div>
</c:if>
<c:if test="${where eq 2 }">
	<div class="container-fluid">
		<div class="col-4 my-col"></div>
			<a class="navbar-brand" href="#" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnQuestionBoard }</a>
		<div class="col-5 my-col"></div>
	</div>
</c:if>
<c:if test="${where eq 3 }">
	<div class="container-fluid">
		<div class="col-4 my-col"></div>
			<a class="navbar-brand" href="#" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnInventory }</a>
		<div class="col-5 my-col"></div>
	</div>
</c:if>
<c:if test="${where eq 4 }">
	<div class="container-fluid">
		<div class="col-4 my-col"></div>
			<a class="navbar-brand" href="#" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnOrder }</a>
		<div class="col-5 my-col"></div>
	</div>
</c:if>
<c:if test="${where eq 5 }">
	<div class="container-fluid">
		<div class="col-4 my-col"></div>
			<a class="navbar-brand" href="#" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnSell }</a>
		<div class="col-5 my-col"></div>
	</div>
</c:if>
<c:if test="${where eq 6 }">
	<div class="container-fluid">
		<div class="col-4 my-col"></div>
			<a class="navbar-brand" href="#" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnSearch }</a>
		<div class="col-5 my-col"></div>
	</div>
</c:if>