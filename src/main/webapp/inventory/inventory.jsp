<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TabTab</title>
<link rel="stylesheet" type="text/css" href="${project}style_inventory.css">
</head>
<body>
	<main>
		<nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
		    <c:import url="/template/header.jsp"/>
  		</nav>
  		<div class="row" style="margin-right:0">
	  		<div class="col-sm-2" style="margin-right:0">
			    <c:import url="/template/sidebar.jsp"/>
			  <%--  <c:import url="/template/adminSidebar.jsp"/>  --%>
	  		</div>
	  		<div class="col-sm-10" style="margin-right:0">
  				<h2> ${page_inventory} ( ${str_count} : ${count} ) </h2>
	  			<div class="container_inventory">
					<table>
						<%--
					    <tr>
					        <td colspan="7" style="text-align:right">
					            <a href="autoorder.net">${str_ao_setting}</a>&nbsp;&nbsp;&nbsp;
					        </td>
					    </tr>
					    --%>
					    <tr>
					    
					        <th style="width:12%"> ${str_medi_name} </th>
					        <th style="width:7%"> ${str_supply_value} </th>
					        <th style="width:8%"> ${str_selling_price} </th>
					        <th style="width:6%"> ${str_rt_inven} </th>
					        <th style="width:10%"> ${str_manu_com} </th>  
					        <th style="width:12%"> ${str_chief_ingre} </th>          
					        <th style="width:5%"> ${str_vari_code} </th>  
					               
					    </tr>   
					    <c:if test="${count eq 0}"> 
					        <tr>
					            <td style="text-align:center" colspan="7">
					                ${msg_inventorylist_x}
					            </td>    
					        </tr>
					    </c:if>
					    <c:if test="${count ne 0}">     
					        <c:forEach var="dto" items="${dtos}">
					    		<tr>   		      		    
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
					    		        ${dto.vari_code}
					    		    </td>    		      
					   		    </tr>
					        </c:forEach>
					    </c:if>
					</table>
					<br>
		  		</div>
		  	</div>
  		</div>
	  <div class="container">
	  	<c:import url="/template/footer.jsp"/>
	  </div>
	</main>
</body>
</html>
