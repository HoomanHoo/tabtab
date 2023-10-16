<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>

	<input class="col btn btn-outline-secondary" type="button" id="btnAutoOrder" value="${btnSetAutoOrder}">
	<input class="col btn btn-outline-secondary" type="button" id="btnSetOrder" value="${btnSetOrder }" >
	<input class="col btn btn-outline-secondary" type="button" id="btnCheckOrder" value="${btnCheckOrder }">
	<input class="col btn btn-outline-secondary" type="button" id="btnOrderHistory" value="${btnOrderHistory }">

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
