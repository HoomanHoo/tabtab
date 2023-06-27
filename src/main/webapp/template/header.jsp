<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>

<c:set var="where" value="${param.where }"/>
<c:if test="${where eq null }">
	<div class="row">
			<div class="col-6"></div>
			<div class="col-6"><a class="navbar-brand" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TabTab</a></div>
	</div>
</c:if>
<c:if test="${where eq 1 }">
	<div class="container-fluid">
		<div class="col-4 my-col"><a class="navbar-brand"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnMyPage }</a></div>
		<div class="col-6 my-col">
		<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
			onclick="location='userlogout.net'">
		</div>
	</div>
</c:if>
<c:if test="${where eq 2 }">
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 my-col">
				<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
					onclick="location='userlogout.net'">
			</div>
			<div class="col-4 my-col"><a class="navbar-brand"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnQuestionBoard }</a></div>
		</div>
	</div>
</c:if>
<c:if test="${where eq 3 }">
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 my-col">
			<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
				onclick="location='userlogout.net'">
			</div>
			<div class="col-4 my-col"><a class="navbar-brand"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnInventory }</a></div>
		</div>
	</div>
</c:if>
<c:if test="${where eq 4 }">
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 my-col">
			<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
				onclick="location='userlogout.net'">
			</div>
			<div class="col-4 my-col"><a class="navbar-brand"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnOrder }</a></div>
		</div>
	</div>
</c:if>
<c:if test="${where eq 5 }">
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 my-col">
			<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
				onclick="location='userlogout.net'">
			</div>
			<div class="col-4 my-col"><a class="navbar-brand"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnSell }</a></div>
		</div>
	</div>
</c:if>
<c:if test="${where eq 6 }">
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 my-col">
			<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
				onclick="location='userlogout.net'">
			</div>
			<div class="col-4 my-col"><a class="navbar-brand"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${btnSearch }</a></div>
		</div>
	</div>
</c:if>
<c:if test="${where eq 7 }">
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 my-col"> 
				<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
					onclick="location='adminlogout.net'">
			</div>
			<div class="col-4 my-col"><a class="navbar-brand" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${signUpList }</a></div>
		</div>
	</div>
</c:if>
<c:if test="${where eq 8 }">
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 my-col">
			<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
				onclick="location='adminlogout.net'">
			</div>
			<div class="col-4 my-col"><a class="navbar-brand"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${signUpD}</a></div>
		</div>
	</div>
</c:if>
<c:if test="${where eq 9 }">
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 my-col">
			<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
				onclick="location='adminlogout.net'">
			</div>
			<div class="col-4 my-col"><a class="navbar-brand"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${signUpIn}</a></div>
		</div>
	</div>
</c:if>
<c:if test="${where eq 10 }">
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 my-col">
			<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
				onclick="location='userlogout.net'">
			</div>
			<div class="col-4 my-col"><a class="navbar-brand"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mypage}</a></div>
		</div>
	</div>
</c:if>
<c:if test="${where eq 11 }">
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 my-col">
			<input class="btn btn-outline-secondary" type="button" value="${btnlogout}"
				onclick="location='userlogout.net'">
			</div>
			<div class="col-4 my-col"><a class="navbar-brand"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${mypagemodi}</a></div>
		</div>
	</div>
</c:if>