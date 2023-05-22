<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_search.css">
<script src="${project}script_search.js"></script>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h1> ${page_search }</h1>


<div class="input-group mb-3">
     <form id="searchform" action="search.net" method="GET" onsubmit="return searchcheck()">
    
        <select id="searchtype" name="type">
			<option  value="">검색조건</option>
			<option ${(param.type=="medi_name")?"selected":"" }value="medi_name">약품명</option>
			<option ${(param.type=="chief_ingre")?"selected":"" }value="chief_ingre">주성분</option>
        </select>
        
	    <input id="keyword" type="text" class="form-control" name="keyword" value="${keyword}" placeholder="검색어를 입력하세요" autofocus>	    
		<input type="hidden" name="medi_code" value="${medi_code}">
 		<input type="hidden" name="keyword" value="${keyword}">
		<input type="hidden" name="type" value="${type}">  
		<input type="hidden" name="pageNum" value="${pageNum}">
		<input type="hidden" name="count" value="${count}">    
	    <button id="searchbtn" class="btn btn-success" type="submit" value="검색">검색</button> 
    </form>        
</div>

<c:choose>
    <c:when test="${not empty dtos}">
        <table>
            <thead>
                <tr>
			        <td colspan="8" style="text-align:right">
			            <a href="aosetting.net">${str_ao_setting}</a>&nbsp;&nbsp;&nbsp;
			        </td>
			    </tr>
			    <tr>
			        <th style="width:5%"> ${str_num} </th>
			        <th style="width:15%"> ${str_medi_name} </th>
			        <th style="width:10%"> ${str_supply_value} </th>
			        <th style="width:10%"> ${str_selling_price} </th>
			        <th style="width:10%"> ${str_manu_com} </th>
			        <th style="width:18%"> ${str_chief_ingre} </th>
			        <th style="width:10%"> ${str_vari_code} </th>
			        <th style="width:10%"> ${str_reg_date} </th>
			               
			    </tr>               
            </thead>
            <tbody>
   	            <c:forEach var="dto" items="${dtos}">
		    		<tr>
		    		    <td style= "text-align:center">
		    		        ${number}
		    		        <c:set var="number" value="${number-1}"/>   		        
		    		    </td>
		    		    <td style= "text-align:center">
		    		        ${dto.medi_name}
		    		    </td>
		    		    <td style= "text-align:center">
		    		        ${dto.supply_value}
		    		    </td>
		    		    <td style= "text-align:center">
		    		        ${dto.selling_price}
		    		    </td>
		    		    <td style= "text-align:center">
		    		        ${dto.manu_com}
		    		    </td>
		    		    <td style= "text-align:center">
		    		        ${dto.chief_ingre}
		    		    </td>
		    		    <td style= "text-align:center">
		    		        ${dto.vari_code}
		    		    </td>
		    		    <td style= "text-align:center">
		    		        <fmt:formatDate value="${dto.reg_date}" type="both"
		    		             pattern="yyyy-MM-dd HH:mm"/>
		    		    </td>       		        
		    		</tr>
	            </c:forEach>                   
            </tbody>
        </table>
    </c:when> 
    <c:otherwise>
        <p>검색 결과가 없습니다.</p>
    </c:otherwise>       
</c:choose>
<br>
<center>
    <c:if test="${startPage gt pageBlock}">
        <a href="search.net">[◀◀]</a>
        <a href="search.net?pageNum=${startPage-pageBlock}">[◀]</a>
    </c:if>
    <c:forEach var="i" begin="${startPage}" end="${endPage}">
        <c:if test="${i eq currentPage}">
    	    <span>[${i}]</span>
    	</c:if>
    	<c:if test="${i ne currentPage}">
    		<a href="search.net?pageNum=${i}">[${i}]</a>
        </c:if>
    </c:forEach>
    <c:if test="${pageCount gt endPage}">
        <a href="search.net?pageNum=${startPage + pageBlock}">[▶]</a>
    	<a href="search.net?pageNum=${pageCount}">[▶▶]</a>
    </c:if>
</center>