<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>


<c:forEach var="dto" items="${dtos }">
<div class="row" style="text-align:center">	
	<input type="hidden" id="${dto.medi_name }6" value="${dto.medi_code }">
	<div id="${dto.medi_name}2" class="col">${dto.medi_name }</div>
	<div id="${dto.medi_name}3" class="col">${dto.trigger_quan }</div>
	<div id="${dto.medi_name}4" class="col">${dto.ao_quan }</div>
	<div id="${dto.medi_name}5" class="col">${dto.supply_value }</div>
	<input type="button" id="${dto.medi_name}" class="col btn btn-outline-secondary" name="btnDelete" value="${btnDelete}">
</div>
</c:forEach>