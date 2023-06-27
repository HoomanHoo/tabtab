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
					<h2> ${page_modify} </h2>
					
					<form method="post" action="questionmodifypro.net" name="modifyform" onsubmit="return modifycheck()">
						<input type="hidden" name="con_num" value="${con_num}">
						<input type="hidden" name="pageNum" value="${pageNum}">
					
						<table>
							<tr>
								<th colspan="2"> ${msg_modify} </th>
							</tr>
							<tr>
								<th> ${str_mem_code} </th>
								<td> ${dto.mem_code} </td>
							</tr>
							<tr>
								<th> ${str_con_subject} </th>
								<td> <input class="input" type="text" name="con_subject" maxlength="200" value="${dto.con_subject}" autofocus> </td>
							</tr>
							<tr>
								<th> ${str_content} </th>
								<td> <textarea name="content" rows="10" cols="40">${dto.content}</textarea> 
							</tr>
							<tr>
								<th colspan="2">
									<input class="inputbutton" type="submit" value="${btn_mod}">
									<input class="inputbutton" type="reset" value="${btn_cancel}">
									<input class="inputbutton" type="button" value="${btn_mod_cancel}"
											onclick="location='question.net?pageNum=${pageNum}'">
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
