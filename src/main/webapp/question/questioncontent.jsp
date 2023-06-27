<%@page import="java.text.SimpleDateFormat"%>
<%@page import="question.QuestionDataBean"%>
<%@page import="question.QuestionDBBean"%>     
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TabTab</title>
<link rel="stylesheet" type="text/css" href="${project}style_question.css">
<script src="${project}script_question.js"></script>  
</head>
<body>
	<main>
		<nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
		    <c:import url="/template/header.jsp"/>
  		</nav>
  		<div class="row" style="margin-right:0">
	  		<div class="col-sm-2" style="margin-right:0">
			   <c:if test="${mem_desc_code eq 3 }">
			    	<c:import url="/template/sidebar.jsp"/>
			    </c:if>
			    <c:if test="${mem_desc_code eq 4 }">
			    	<c:import url="/template/adminSidebar.jsp"/>
			    </c:if>
	  		</div>
	  		<div class="col-sm-10" style="margin-right:0">
	  			<div class="container">
					<h2> ${page_content} </h2>
					<form name="questioncontent" action="questiondeletepro.net" onsubmit="return deleteContent()">
						<input type="hidden" name="con_num" value="${dto.con_num}">
						<input type="hidden" name="pageNum" value="${pageNum}">
					
						<table>
						    <tr>
						        <th> ${str_con_num} </th>
						        <td colspan="3" style="text-align:center"> ${number} </td>       
						    </tr>
						    <tr>
						        <th> ${str_name} </th>
								<c:if test="${dto.mem_desc_code eq 4}">
									<%-- 관리자 --%>
									<td style="text-align:center"> 관리자 </td>
								</c:if>
								
								<c:if test="${dto.mem_desc_code ne 4}">
									<%-- 약사 --%>
									<c:if test="${dto.name eq null}">
								        <td style="text-align:center"> ${dto.mem_code} 약사 </td>
									</c:if>
									<c:if test="${dto.name ne null}">
								        <td style="text-align:center"> ${dto.name} 약사 </td>
									</c:if>
								</c:if>
					
						        <th> ${str_w_date} </th>
						        <td style="text-align:center">
						            <fmt:formatDate value="${dto.w_date}" type="both"
						                pattern="yyyy-MM-dd HH:mm"/>
						        </td>
						    </tr>
						    <tr>
						        <th> ${str_con_subject} </th>
						        <td colspan="3"> &nbsp; ${dto.con_subject} </td>        
						    </tr>
						    <tr>
						        <th> ${str_content} </th>
						        <td colspan="3"> <pre>${dto.content}</pre> </td> 
						    </tr>
						    <tr>
						        <th colspan="4">
								<c:if test="${dto.mem_code eq mem_code}">
						            <input class= "inputbutton" type="button" value="${btn_modify}"
						                 onclick= "location='questionmodifyview.net?con_num=${dto.con_num}&pageNum=${pageNum}'">
						            <input class= "inputbutton" type="submit" value="${btn_delete}">
								</c:if>
						            <input class= "inputbutton" type="button" value="${btn_reply}"
						                 onclick= "location='questionwriteform.net?con_num=${dto.con_num}&ref=${dto.ref}&re_step=${dto.re_step}&re_level=${dto.re_level}'">
						            <input class= "inputbutton" type="button" value="${btn_list}"
						                 onclick= "location='question.net?pageNum=${pageNum}'">
						        </th>
						    </tr>
						</table>
					</form>
		  		</div>
		  	</div>
  		</div>
	  <div class="container">
	  	<c:import url="/template/footer.jsp"/>
	  </div>
	</main>
</body>
</html>