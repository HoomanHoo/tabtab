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
        <c:import url="/template/header.jsp"/>
    </nav>
    <div class="row" style="margin-right:0; height:82vh">
        <div class="col">
        </div>
        <div class="col" style="text-align:center">
            <form method="post" enctype="multipart/form-data" action="usersignuppro.net" name="userinputform" onsubmit="return userinputcheck()">
                <input type="hidden" name="check" value="0">
                <table class="table">
                    <tr>
                        <th colspan="2"> ${msg_signup}</th>
                    </tr>
                    <tr>
                        <th> ${str_email}</th>
                        <td>
                            <div class="input-group">
                                <input class="form-control" type="text" name="email" maxlength="50">
                                <button class="btn btn-outline-secondary" type="button" onclick="userconfirmemail()">${btn_confirm}</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th> ${str_pr_img}</th>
                        <td>
                            <input class="form-control" type="file" name="pr_img">
                        </td>
                    </tr>
                    <tr>
                        <th> ${str_pl_img}</th>
                        <td>
                            <input class="form-control" type="file" name="pl_img">
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">${msg_upload}</th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <input class="btn btn-outline-secondary" type="submit" value="${btn_input}">
                            <input class="btn btn-outline-secondary" type="reset" value="${btn_cancel}">
                            <input class="btn btn-outline-secondary" type="button" value="${btn_input_cancel}" onclick="location='userloginform.net'">
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>