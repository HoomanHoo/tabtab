<%@page import="java.text.SimpleDateFormat"%>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_question.css">
<script src="${project}script_question.js"></script>    


<h2> ${page_questionlist} ( ${str_count} : ${count} ) </h2>

<table>
    <tr>
        <td colspan="4" style="text-align:right">
            <a href="questionwriteform.net">${str_write}</a>&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <th style="width:7%"> ${str_con_num} </th>
        <th style="width:55%"> ${str_con_subject} </th>
        <th style="width:20%"> ${str_name} </th>       
        <th style="width:12%"> ${str_w_date} </th>      
    </tr>   
    <c:if test="${count eq 0}"> 
        <tr>
            <td style="text-align:center" colspan="4">
                ${msg_questionlist_x}
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
    		    <td>
    		        <c:if test="${dto.re_level gt 1}">   		       
    		            <c:set var="wid" value="${(dto.re_level-1)*10}"/>
    		        	<img src= "${project}images/level.gif" border="0" width="${wid}" height="15">
    		        </c:if>
    		        <c:if test="${dto.re_level gt 0}">
    		        	<img src= "${project}images/re.gif" border="0" width="20" height="15">
    		        </c:if>
    		        <a href= "questioncontent.net?num=${dto.con_num}&pageNum=${pageNum}&number=${number+1}">
    		            ${dto.con_subject}
                    </a>
    		    </td>   		    
    		    <td style= "text-align:center">
    		        ${dto.name}
    		    </td>  		 
    		    <td style= "text-align:center">
    		        <fmt:formatDate value="${dto.w_date}" type="both"
    		             pattern="yyyy-MM-dd HH:mm"/>
    		    </td>      		        
    		</tr>
        </c:forEach>
    </c:if>
</table>
<br>
<center>
    <c:if test="${startPage gt pageBlock}">
        <a href="question.net">[◀◀]</a>
        <a href="question.net?pageNum=${startPage-pageBlock}">[◀]</a>
    </c:if>
    <c:forEach var="i" begin="${startPage}" end="${endPage}">
        <c:if test="${i eq currentPage}">
    	    <span>[${i}]</span>
    	</c:if>
    	<c:if test="${i ne currentPage}">
    		<a href="question.net?pageNum=${i}">[${i}]</a>
        </c:if>
    </c:forEach>
    <c:if test="${pageCount gt endPage}">
        <a href="question.net?pageNum=${startPage + pageBlock}">[▶]</a>
    	<a href="question.net?pageNum=${pageCount}">[▶▶]</a>
    </c:if>
</center>