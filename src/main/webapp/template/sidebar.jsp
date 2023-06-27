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
    	<a href="/tabtab/usermypage.net" class="nav-link text-black" aria-current="page">
      		<svg class="bi me-2" width="16" height="16"><use xlink:href="#home"></use></svg>
      		${btnMyPage }
    	</a>
	</li>
	<li>
    	<a href="/tabtab/question.net" class="nav-link text-black">
      		<svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
     		${btnQuestionBoard }
    	</a>
	</li>
	<li>
    	<a href="/tabtab/inventory.net" class="nav-link text-black">
      		<svg class="bi me-2" width="16" height="16"><use xlink:href="#table"></use></svg>
			${btnInventory }
    	</a>
	</li>
	<li>
    	<a href="/tabtab/autoorder.net" class="nav-link text-black">
      		<svg class="bi me-2" width="16" height="16"><use xlink:href="#grid"></use></svg>
     		${btnOrder }
    	</a>
	</li>
	<li>
    	<a href="/tabtab/sellingpage.net" class="nav-link text-black">
      		<svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
    		${btnSell }
    	</a>
	</li>
	 <li>
    	<a href="/tabtab/search.net" class="nav-link text-black">
      		<svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
     		${btnSearch }
   		</a>
	</li>
</ul>
<hr>
</div>
