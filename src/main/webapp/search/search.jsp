<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_search.css">
<script src="${project}script_search.js"></script>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h1> ${page_search}</h1>


<div class="input-group mb-3">
     <form id="searchform" action="search.net" method="GET" onsubmit="return searchcheck()">   
        <select id="searchtype" name="type" onsubmit="return keywordcheck()">
			<option value=""  ${type== null ? "selected" :"" }>검색조건</option>
			<option value="N" ${type eq 'N'?"selected":"" }>약품명</option>
			<option value="I" ${type eq 'I'?"selected":"" }>주성분</option>
        </select>
     
     
	    <input id="keyword" type="text" class="form-control" name="keyword" value="${keyword}" 
	         placeholder="검색어를 입력하세요" autofocus>	    
		<input type="hidden" name="medi_code" value="${medi_code}">
 		<input type="hidden" name="keyword" value="${keyword}">
		<input type="hidden" name="type" value="${type}">  
		<input type="hidden" name="pageNum" value="${pageNum}">
		<input type="hidden" name="count" value="${count}">    

	    <button id="searchbtn" class="btn btn-success" type="submit" value="검색">검색</button> 
    </form>        
</div>

