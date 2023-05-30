<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="height: 81vh;">
 <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
	<svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
	<span class="fs-4">메뉴</span>
</a>
<hr>
<ul class="nav nav-pills flex-column mb-auto">
	<li class="nav-item">
    	<a href="#" class="nav-link text-black" aria-current="page">
      		<svg class="bi me-2" width="16" height="16"><use xlink:href="#home"></use></svg>
      		${btnRegistRequest }
    	</a>
	</li>
	<li>
    	<a href="#" class="nav-link text-black">
      		<svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
     		${btnQuestionBoard }
    	</a>
	</li>
	<li>
    	<a href="/tabtab/orderrequest.net" class="nav-link text-black">
      		<svg class="bi me-2" width="16" height="16"><use xlink:href="#table"></use></svg>
			${btnCheckOrder }
    	</a>
	</li>
</ul>
<hr>
</div>
