<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_search.css">
<script src="${project}script_search.js"></script>    


<h2> ${page_searchlist} ( ${str_count} : ${count} ) </h2>


<table>
    <tr>
        <td colspan="8" style="text-align:right">
            <a href="searchsearchlist.net">${page_searchlist}(${keywrod})</a>&nbsp;&nbsp;&nbsp;
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
    <c:if test="${count eq 0}"> 
        <tr>
            <td style="text-align:center" colspan="6">
                ${msg_search_x}
            </td> 
               
        </tr>
    </c:if>
    <c:if test="${count ne 0}">     
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
    </c:if>
</table>
<br>
<center>
    <c:if test="${startPage gt pageBlock}">
        <a href="searchlist.net">[◀◀]</a>
        <a href="searchlist.net?pageNum=${startPage-pageBlock}">[◀]</a>
    </c:if>
    <c:forEach var="i" begin="${startPage}" end="${endPage}">
        <c:if test="${i eq currentPage}">
    	    <span>[${i}]</span>
    	</c:if>
    	<c:if test="${i ne currentPage}">
    		<a href="searchsearchlist.net?pageNum=${i}">[${i}]</a>
        </c:if>
    </c:forEach>
    <c:if test="${pageCount gt endPage}">
        <a href="searchsearchlist.net?pageNum=${startPage + pageBlock}">[▶]</a>
    	<a href="searchsearchlist.net?pageNum=${pageCount}">[▶▶]</a>
    </c:if>
</center>