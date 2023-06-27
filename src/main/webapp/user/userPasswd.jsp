<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/misc/textSet.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, height=device-height ,initial-scale=1">
    <link href="${path}design.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <script src="${path}script.js"></script>
    <title>Insert title here</title>
</head>
<body>
<div id="viewPage">
    <div id="header">
        <c:import url="/template/header.jsp"/>  
    </div>
    <div id="findPasswdInput">
        <form name="fPasswdInput" method="post" action="userpasswdview.net" onsubmit="return checkInput()">
            <table class="table">
                <tr>
                    <td>
                        ${textName}
                    </td>
                    <td>
                        <input class="form-control" type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <td>    
                        ${textEmail}
                    </td>
                    <td>
                        <input class="form-control" type="email" name="email">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input class="btn btn-outline-secondary" type="submit" value="${btnFindPasswd}">
                        <input class="btn btn-outline-secondary" type="button" value="${btnCancel}">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div id="footer">
        <c:import url="/template/footer.jsp"/>  
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>