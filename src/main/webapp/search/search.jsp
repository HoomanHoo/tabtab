<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_search.css">
<script src="${project}script_search.js"></script>   

<h2> ${page_search} </h2>
<div class="input-group mb-3">
    <form id="searchForm" action="searchlist.jsp" method="GET">
        <select name="type">
			<option value="">전체보기</option>
			<option value="N">약품명</option>
			<option value="I">주성분</option>
        </select>
 
	    <input type="text" class="form-control" name="keyword" value="${keyword}" placeholder="Search" autofocus>	    
		<input type="hidden" name="keyword" value="${keyword}">
		<input type="hidden" name="type" value="${type}">  
		<input type="hidden" name="pageNum" value="${pageNum}">
		<input type="hidden" name="count" value="${count}">    
	    <button class="btn btn-success" type="submit">검색</button> 
    </form>        
</div>

  