<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="asetting.jsp"%>
<%@include file="/misc/bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <script src="${path}script_admin.js"></script>
    <meta charset="UTF-8">
    <title>TabTab</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<main>
    <nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
        <div class="container">
            <c:import url="/template/header.jsp?where=7"/>
        </div>
    </nav>
    <div class="row" style="margin-right:0">
        <div class="col-sm-2" style="margin-right:0">
            <c:import url="/template/adminSidebar.jsp"/>
        </div>
        <div class="col" style="margin-top:50px">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th style="width:15%"> ${str_memcode}</th>
                    <th style="width:40%"> ${str_semail}</th>
                    <th style="width:15%"> ${str_info}</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${count eq 0}">
                    <tr>
                        <td style="text-align:center" colspan="3">
                            ${msg_list_x}
                        </td>
                    </tr>
                </c:if>
                <c:if test="${count ne 0}">
                    <c:forEach var="dto" items="${dtos}">
                        <tr>
                            <td style="text-align:center">
                                ${dto.mem_code}
                                <c:set var="number" value="${number-1}"/>
                            </td>
                            <td>${dto.email}</td>
                            <td style="text-align:center">
                                <a href="adminsignupd.net?mem_code=${dto.mem_code}&pageNum=${pageNum}&number=${number+1}">
                                    ${str_infom}
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
                </tbody>
            </table>
            <br>
            <div class="text-center">
                <c:if test="${startPage gt pageBlock}">
                    <a href="adminsignuplist.net">[◀◀]</a>
                    <a href="adminsignuplist.net?pageNum=${startPage - pageBlock}">[◀]</a>
                </c:if>
                <c:forEach var="i" begin="${startPage}" end="${endPage}">
                    <c:if test="${ i eq currentPage}">
                        <span>[${i}]</span>
                    </c:if>
                    <c:if test="${ i ne currentPage}">
                        <a href="adminsignuplist.net?pageNum=${i}">[${i}]</a>
                    </c:if>
                </c:forEach>
                <c:if test="${pageCount gt endPage}">
                    <a href="adminsignuplist.net?pageNum=${startPage + pageBlock}">[▶]</a>
                    <a href="adminsignuplist.net?pageNum=${pageCount}">[▶▶]</a>
                </c:if>
            </div>
        </div>
    </div>
    <div class="container">
        <c:import url="/template/footer.jsp"/>
    </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>