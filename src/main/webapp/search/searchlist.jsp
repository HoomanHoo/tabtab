<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TabTab</title>
<link rel="stylesheet" type="text/css" href="${project}style_search.css">
<script src="${project}script_search.js"></script>    
<script src="${path}jquery-3.6.4.js"></script>
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
	  			<div class="container_searchlist">

					<table>    
						<tr>
						    <td colspan="7" style="text-align:right">
						        <a href="aosetting.net">${str_ao_setting}</a>&nbsp;&nbsp;&nbsp;
						    </td>
					 	</tr>
					
						<tr>
						    <th style="width:5%"> ${str_num} </th>
						   <th style="width:20%"> ${str_medi_name} </th>
						   <th style="width:7%"> ${str_supply_value} </th>
						   <th style="width:8%"> ${str_selling_price} </th>
						   <th style="width:15%"> ${str_manu_com} </th>
						   <th style="width:18%"> ${str_chief_ingre} </th>
						   <th style="width:5%"> ${str_vari_code} </th>			               
						</tr> 
						
					 	<c:if test="${count eq 0}"> 
					       <tr>
					            <td style="text-align:center" colspan="7">
					                ${msg_searchlist_x}
					            </td>    
					        </tr>
					    </c:if>  

					    <c:if test="${count ne 0}">                        
					        
					        <c:forEach var="dto" items="${dtos}" >
					   		    <tr>
						   		    <td style= "text-align:center">
						   		        ${number}	   		        		        
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
					   		    </tr>
            <c:set var="number" value="${number+1}"/>
					        </c:forEach> 
					    </c:if>                  
						            
					</table>
					
					<br>
					<center>
    <c:if test="${startPage gt pageBlock}">
        <a href="searchlist.net?type=${type}&keyword=${keyword}">[◀◀]</a>
        <a href="searchlist.net?pageNum=${startPage-pageBlock}&type=${type}&keyword=${keyword}">[◀]</a>
    </c:if>
    <c:forEach var="i" begin="${startPage}" end="${endPage}">
        <c:if test="${i eq currentPage}">
    	    <span>[${i}]</span>
    	</c:if>
    	<c:if test="${i ne currentPage}">
    		<a href="searchlist.net?pageNum=${i}&type=${type}&keyword=${keyword}">[${i}]</a>
        </c:if>
    </c:forEach>
    <c:if test="${pageCount gt endPage}">
        <a href="searchlist.net?pageNum=${startPage + pageBlock}&type=${type}&keyword=${keyword}">[▶]</a>
    	<a href="searchlist.net?pageNum=${pageCount}&type=${type}&keyword=${keyword}">[▶▶]</a>
					    </c:if>
					</center>
		  		</div>
		  	</div>
  		</div>
	  <div class="container">
	  	<c:import url="/template/footer.jsp"/>
	  </div>
	</main>
</body>
</html>