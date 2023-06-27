<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="asetting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="${path}script_admin.js"></script>
    <title>TabTab</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<main>
    <nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
        <div class="container">
            <c:import url="/template/header.jsp?where=8"/>
        </div>
    </nav>
    <div class="row" style="margin-right:0; margin-left:50px;">
        <div class="col-sm-2" style="margin-right:0;">
            <c:import url="/template/adminSidebar.jsp"/>
        </div>
        <div class="col" style="margin-top:50px;">
            <form method="post" action="adminsignupdeletepro.net" name="signupd">
                <input type="hidden" name="mem_code" value="${dto.mem_code}">
                <input type="hidden" name="pageNum" value="${pageNum}">
                <table class="table table-bordered">
                    <tr>
                        <th> ${str_semail} </th>
                        <td> ${dto.email} </td>
                        <td style="text-align:right">${dto.r_date}</td>
                    </tr>
                    <tr>
                        <th> ${str_prl_img}</th>
                        <td><img src=" ${dto.pr_img}" alt="사업자등록증"></td>
                        <td><img src=" ${dto.pl_img}" alt="약사면허증"></td>
                    </tr>
                    <tr>
                        <th colspan="3">
                            <div style="text-align:center">
                                <input class="btn btn-outline-primary" type="button" value="${btn_sok}"
                                       onclick="location='adminsignupinput.net?mem_code=${dto.mem_code}&pageNum=${pageNum}'">
                                <input class="btn btn-outline-secondary" type="submit" value="${btn_sok_cancel}">
                                <input class="btn btn-outline-secondary" type="button" value="${btn_cb_list}"
                                       onclick="location='adminsignuplist.net?pageNum=${pageNum}'">
                            </div>
                        </th>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="container">
        <c:import url="/template/footer.jsp"/>
    </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>