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
            <c:import url="/template/header.jsp?where=10"/>
        </div>
    </nav>
    <div class="row" style="margin-right:0;" style="margin-left:50px">
        <div class="col-sm-2" style="margin-right:0">
            <c:import url="/template/sidebar.jsp"/>
        </div>
        <div class="col" style="margin-top:50px">
            <form method="post" action="usermypage.net" name="usermypage">
                <table class="table">
                    <tr>
                        <th> ${str_email}</th>
                        <td> ${dto.email} </td>
                    </tr>
                    <tr>
                        <th> ${str_passwd}</th>
                        <td> ${dto.password}</td>
                    </tr>
                    <tr>
                        <th> ${str_p_address}</th>
                        <td> ${dto.p_address}</td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <div style="text-align:center">
                                <input class="btn btn-outline-secondary" type="button" value="${btn_u_modify}"
                                       onclick="location='usermypagemodi.net'"><!-- 가입누르면 넘어가는데 -->
                                <input class="btn btn-outline-danger" type="button" value="${btn_u_delete}"
                                       onclick="location='userdeleteform.net'">
                            </div>
                        </th>
                    </tr>
                </table>
            </form>
        </div>
        <div class="col">
        </div>
    </div>
    <div class="container">
        <c:import url="/template/footer.jsp"/>
    </div>
</main>
</body>
</html>