<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_search.css">
<script src="${project}script_search.js"></script>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
    <title>의약품 검색</title>
</head>
<body>
	<header>
	    <h1>의약품검색</h1>
	</header>
	<div id="sidebar">
		<nav>
			<c:import url="/template/sidebar.jsp"></c:import>
		</nav>
	</div>
	
<div id="searchbox">
    <form id="searchform" action="search.net" method="GET" onsubmit="return searchcheck()">
        <select id="searchTypeSel" name="type">
            <option value="">검색조건</option>
            <option value="N" ${param.type=='N'?'selected':""}>약품명</option>
            <option value="I" ${param.type=='N'?'selected':""}>주성분</option>
        </select>
        <input type="text" class="form-control" id="keyword" name="keyword" 
            value="${param.keyword}" placeholder="검색어를 입력하세요" autofocus>       
        <button class="btn btn-success" type="submit">검색</button>
    </form>
</div>
<div id="content">
    <article>
    <div id="medi_name result" style="float:left">
        <c:choose>
            <c:when test="${not empty searchList}">
                <table>
                    <thead>
                        <tr>
                            <th style="width:15%">약품명</th>
                            <th style="width:10%">공급가격</th>
                            <th style="width:10%">판매가격</th>
                            <th style="width:10%">제조사</th>
                            <th style="width:18%">주성분</th>
                            <th style="width:10%">변형코드</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="dto" items="${searchList}">
                            <tr>
                                <td>${dto.medi_name}</td>
                                <td>${dto.supply_value}</td>
                                <td>${dto.selling_price}</td>
                                <td>${dto.manu_com}</td>
                                <td>${dto.chief_ingre}</td>
                                <td>${dto.vari_code}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <p>검색 결과가 없습니다.</p>
            </c:otherwise>
        </c:choose>
    </div>
    
    <div id="chief_ingre result" style="float:right">
        <c:choose>
            <c:when test="${not empty searchList}">
                <table>
                    <thead>
                        <tr>
                            <th style="width:15%">약품명</th>
                            <th style="width:10%">공급가격</th>
                            <th style="width:10%">판매가격</th>
                            <th style="width:10%">제조사</th>
                            <th style="width:18%">주성분</th>
                            <th style="width:10%">변형코드</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="dto" items="${searchList}">
                            <tr>
                                <td>${dto.medi_name}</td>
                                <td>${dto.supply_value}</td>
                                <td>${dto.selling_price}</td>
                                <td>${dto.manu_com}</td>
                                <td>${dto.chief_ingre}</td>
                                <td>${dto.vari_code}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <p>검색 결과가 없습니다.</p>
            </c:otherwise>
        </c:choose>
    </div>
</article>
</div>
<footer>
    <!-- footer 내용 -->
</footer>



















