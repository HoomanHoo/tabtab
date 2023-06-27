<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>

	<input class="col" type="button" id="btnAutoOrder" class="btn btn-outline-secondary" value="${btnSetAutoOrder}">
	<input class="col" type="button" id="btnSetOrder" class="btn btn-outline-secondary" value="${btnSetOrder }" >
	<input class="col" type="button" id="btnCheckOrder" class="btn btn-outline-secondary" value="${btnCheckOrder }">
	<input class="col" type="button" id="btnOrderHistory" class="btn btn-outline-secondary" value="${btnOrderHistory }">

<script type="text/javascript">
//<!--

let btnAutoOrder = document.querySelector("#btnAutoOrder");
let btnSetOrder = document.querySelector("#btnSetOrder");
let btnCheckOrder = document.querySelector("#btnCheckOrder");
let btnOrderHistory = document.querySelector("#btnOrderHistory");

btnAutoOrder.addEventListener("click", autoOrder);
btnSetOrder.addEventListener("click", SetOrder);
btnCheckOrder.addEventListener("click", checkOrder);
btnOrderHistory.addEventListener("click", orderHistory);


function autoOrder(){
	window.location.href = "/tabtab/autoorder.net";
}

function SetOrder(){
	window.location.href = "/tabtab/selforder.net";
}

function checkOrder(){
	window.location.href = "/tabtab/ordercheck.net";
}

function orderHistory(){
	window.location.href = "/tabtab/orderhistory.net";
}



//-->
</script>
