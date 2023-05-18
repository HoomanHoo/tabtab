<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, height=device-height ,initial-scale=1">
		<link href="${path}design.css" rel="stylesheet" type="text/css">
		<script src="${path}script.js"></script>
		<title>Insert title here</title>
	</head>
	<body>
		<div id="viewPage">
			<div id="header">
				<c:import url="http://localhost:8080/tabtab/header.net?where=1"></c:import>
			</div>
			<div id="findPasswdInput">
				<form name="fPasswdInput" method="post" action="findpasswdpro.net" onsubmit="return checkInput()">
					<table >
						<tr>
							<td>
								이름
							</td>
							<td>
								 <input type="text" name="name">
							</td>
						<tr>
							<td>	
								이메일 
							</td>
							<td>
								<input type="email" name="email">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="${btnFindPasswd }">
								<input type="button" value="${btnCancel }">
							</td>
					</table>
				</form>
			</div>
			<div id="footer">
	        	<c:import url="http://localhost:8080/tabtab/footer.net"></c:import>
	      	</div>
      	</div>
	</body>
</html>