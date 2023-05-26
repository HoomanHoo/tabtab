<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_search.css">
<script src="${project}script_search.js"></script>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
    <title>의약품 검색</title>
</head>
<body>
	<header>
	    <h1 style="text-align:center">의  약  품  검  색</h1>
	</header>
	<div id="sidebar">
		<nav>
			<c:import url="/template/sidebar.jsp"></c:import>
		</nav>
	</div>
	
<div id="searchbox">
    <form id="searchform" action="searchlist.net" method="GET" onsubmit="return searchcheck()">       
        <fieldset>
            <label class="hidden">검색분류</label>
	        <select name="type">
	            <option ${(param.type =="medi_name")?"selected":""} value="medi_name">약품명</option>
	            <option ${(param.type =="chief_ingre")?"selected":""} value="chief_ingre">주성분</option>
	        </select>
	        <label class="hidden">검색어</label>
	        <input type="text" class="form-control" name="keyword" value="${param.keyword}" placeholder="검색어를 입력하세요" autofocus>              
	        <input type="hidden" name="keyword" value="${keyword}">
	        <input type="hidden" name="count" value="${count}">
	        <input type="hidden" name="pageNum" value="${pageNum}">	        
	        <input class="btn btn-search" type="submit" value="검색"/>       
        </fieldset>
    </form>   
</div>
<br><br>
<div id="resultbox">
    <table>   
	    <tr>
	        <th style="width:7%"> ${str_num} </th>
	        <th style="width:30%"> ${str_medi_name} </th>
	        <th style="width:7%"> ${str_supply_value} </th>
	        <th style="width:10%"> ${str_selling_price} </th>
	        <th style="width:12%"> ${str_manu_com} </th>
	        <th style="width:30%"> ${str_chief_ingre} </th>       
	        <th style="width:12%"> ${str_vari_code} </th> 
	    </tr> 
	    <tr>
	        <td colspan="7" style="text-align:center">
	            ${msg_searchlist_x}&nbsp;&nbsp;&nbsp;
	        </td>
	    </tr>	    
    </table>
</div>
<footer>
    <!-- footer 내용 -->
</footer>



















