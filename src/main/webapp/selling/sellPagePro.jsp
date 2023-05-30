<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>


<c:forEach var="dto" items="${dtos }">
	<div id="list" class="row" style="text-align:center">
		<input type="text" name="mediName" class="col" value="${dto.medi_name }" readonly>
		<input type="text" id="${dto.medi_name }2" class="col" value="${dto.selling_price }" readonly>
		<input type="text" id="${dto.medi_name }3" class="col-2" value="${dto.rt_inven }" readonly>
		<input type="hidden" id="${dto.medi_name }4" value="${dto.medi_code }">					
	</div>
</c:forEach>