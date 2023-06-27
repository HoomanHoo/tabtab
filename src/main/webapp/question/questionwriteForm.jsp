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
					<form method="post" action="questionwritepro.net" name="writeform" onsubmit="return writecheck()">
					    <input type="hidden" name="con_num"  value="${con_num}">
					    <input type="hidden" name="ref"		 value="${ref}">
					    <input type="hidden" name="re_step"  value="${re_step}">
					    <input type="hidden" name="re_level" value="${re_level}">
					<%--    <input type="hidden" name="mem_desc_code" value="${mem_desc_code}"> --%>
					
					    <table>
					        <tr>
					            <th colspan="2" style="text-align:right">
					                <a href="question.net">${str_questionlist}</a>&nbsp;&nbsp;&nbsp;            
					            </th>
					        </tr>
					        <tr>
					            <th> ${str_mem_code} </th>
					            <td> ${mem_code} </td>
					        </tr>
					        <tr>
					            <th> ${str_con_subject} </th>
					            <td>
					                <input class="input" type="text" maxlength="200" name="con_subject" autofocus>
					            </td>
					        </tr>
					        <tr>
					            <th> ${str_content} </th>
					            <td>
					                 <textarea name="content" rows="10" cols="40"></textarea>
					            </td>
					        </tr> 
					         
					        <tr>
					            <th colspan="2">
					                 <input class="inputbutton" type="submit" value="${btn_write}">
					                 <input class="inputbutton" type="reset" value="${btn_cancel}">
					                 <input class="inputbutton" type="button" value="${btn_list}" 
					                     onclick="location='question.net'">
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