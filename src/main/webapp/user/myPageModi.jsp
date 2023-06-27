<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="usetting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="${path}script_user.js"></script>
    <title>TabTab</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<main>
    <nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
        <div class="container">
            <c:import url="/template/header.jsp?where=11"/>
        </div>
    </nav>
    <div class="row" style="margin-right:0;" style="margin-left:50px;">
        <div class="col-sm-2" style="margin-right:0;">
            <c:import url="/template/sidebar.jsp"/>
        </div>
        <div class="col" style="margin-top:50px;">
            <form method="post" action="usermypagemodipro.net" name="usermypagemodi" onsubmit="return usermodifycheck()">
                <table class="table">
                    <tr>
                        <th> ${str_email}</th>
                        <td> ${dto.email} </td>
                    </tr>
                    <tr>
                        <th> ${str_passwd}</th>
                        <td>
                            <input class="form-control" type="password" name="password" maxlength="30"
                                   value="${dto.password}">
                        </td>
                    </tr>
                    <tr>
                        <th> ${str_p_address}</th>
                        <td>
                            <input class="form-control" type="text" name="p_address" maxlength="300"
                                   value="${dto.p_address}">
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <input class="btn btn-outline-secondary" type="submit" value="${btn_u_modify}">
                            <input class="btn btn-outline-secondary" type="button" value="${btn_cancel}"
                                   onclick="location='usermypage.net'">
                        </th>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="col">
    </div>
    <div class="container">
        <c:import url="/template/footer.jsp"/>
    </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>