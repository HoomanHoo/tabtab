<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_search.css">
<script src="${project}script_search.js"></script>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<h1> ${page_search }</h1>


<div class="input-group mb-3">
     <form id="searchform" action="search.jsp" method="GET" onsubmit="return searchcheck()">
    
        <select name="type">
			<option value="">키워드선택</option>
			<option value="N">약품명</option>
			<option value="I">주성분</option>
        </select>
        
	    <input type="text" class="form-control" name="keyword" value="${keyword}" placeholder="Search" autofocus>	    
		<input type="hidden" name="medi_code" value="${medi_code}">
 		<input type="hidden" name="keyword" value="${keyword}">
		<input type="hidden" name="type" value="${type}">  
		<input type="hidden" name="pageNum" value="${pageNum}">
		<input type="hidden" name="count" value="${count}">    
	    <button class="btn btn-success" type="submit">검색</button> 
    </form>        
</div>


