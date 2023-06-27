<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="usetting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <script src="${path}script_user.js"></script>
    <meta charset="UTF-8">
    <title>TabTab</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<main>
    <nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
        <div class="container">
            <c:import url="/template/header.jsp"/>
        </div>
    </nav>
    <div class="row" style="margin-right:0">
        <div class="col-sm-2" style="margin-right:0">
            <c:import url="/template/sidebar.jsp"/>
        </div>
        <div class="col" style="margin-top:50px">
            <form method="post" action="userdeletepro.net" name="delelteform">
                <table class="table">
                    <tr>
                        <th> ${msg_delete} </th>
                    </tr>
                    <tr>
                        <th colspan="3">
                            <input class="btn btn-outline-secondary" type="submit" value="${btn_delete}">
                            <input class="btn btn-outline-secondary" type="button" value="${btn_cancel}"
                                   onclick="location='usermypage.net'">
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