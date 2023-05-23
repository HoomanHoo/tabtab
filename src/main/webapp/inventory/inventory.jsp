<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_inventory.css">
<script src="${project}script_inventory.js"></script>    


<h2> ${page_inventory} ( ${str_count} : ${count} ) </h2>

<form id="inventoryform" action="inventorylist.jsp" method="GET" style="align:right">
    <select name="type">
		<option value="">재고현황선택</option>
		<option value="A">자동발주여부</option>
		<option value="S">구분:전문</option>
		<option value="G">구분:일반</option>
    </select>
</form>

<table>
    <tr>
        <td colspan="6" style="text-align:right">
            <a href="aosetting.net">${str_ao_setting}</a>&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <th style="width:5%"> ${str_num} </th>
        <th style="width:12%"> ${str_medi_name} </th>
        <th style="width:7%"> ${str_supply_value} </th>
        <th style="width:8%"> ${str_selling_price} </th>
        <th style="width:6%"> ${str_rt_inven} </th>
        <th style="width:10%"> ${str_manu_com} </th>  
        <th style="width:12%"> ${str_chief_ingre} </th>  
        <th style="width:10%"> ${str_ao_setting_num} </th>  
        <th style="width:5%"> ${str_vari_code} </th>  
        <th style="width:7%"> ${str_reg_date} </th>       
    </tr>   
    <c:if test="${count eq 0}"> 
        <tr>
            <td style="text-align:center" colspan="10">
                ${msg_inventorylist_x}
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
    		        ${dto.rt_inven}
    		    </td>
    		    <td style= "text-align:center">
    		        ${dto.manu_com}
    		    </td>
    		    <td style= "text-align:center">
    		        ${dto.chief_ingre}
    		    </td>
    		    <td style= "text-align:center">
    		        ${dto.ao_setting_num}
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
        <a href="inventorylist.net">[◀◀]</a>
        <a href="inventorylist.net?pageNum=${startPage-pageBlock}">[◀]</a>
    </c:if>
    <c:forEach var="i" begin="${startPage}" end="${endPage}">
        <c:if test="${i eq currentPage}">
    	    <span>[${i}]</span>
    	</c:if>
    	<c:if test="${i ne currentPage}">
    		<a href="inventorylist.net?pageNum=${i}">[${i}]</a>
        </c:if>
    </c:forEach>
    <c:if test="${pageCount gt endPage}">
        <a href="?pageNum=${startPage + pageBlock}">[▶]</a>
    	<a href="boardlist.do?pageNum=${pageCount}">[▶▶]</a>
    </c:if>
</center>