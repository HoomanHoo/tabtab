<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fnc" uri="http://java.sun.com/jsp/jstl/functions" %>


<%--파일 경로 --%>
<c:set var="path" value="/tabtab/misc/"/>

<%--텍스트 --%>
<c:set var="textName" value="이름"/>
<c:set var="textEmail" value="이메일"/>
<c:set var="textQuantity" value="수량"/>
<c:set var="textPrice" value="발주가"/>
<c:set var="textMediName" value="제품명"/>
<c:set var="textChiefIngre" value="주성분"/>
<c:set var="findPasswd" value="비밀번호 찾기"/>
<c:set var="myPage" value="마이페이지"/>
<c:set var="questionBoard" value="문의사항"/>
<c:set var="inventory" value="재고확인"/>
<c:set var="order" value="발주"/>
<c:set var="sell" value="판매"/>
<c:set var="search" value="검색"/>
<c:set var="footer" value="소재지: 서울특별시 서초구 서초대로74길33 Tel: 02-4023-0088 Email: vocustomer@tabtab.com"/>


<%--버튼 --%>
<c:set var="btnMyPage" value="마이페이지"/>
<c:set var="btnQuestionBoard" value="문의사항"/>
<c:set var="btnInventory" value="재고확인"/>
<c:set var="btnOrder" value="발주"/>
<c:set var="btnSell" value="판매"/>
<c:set var="btnSearch" value="검색"/>
<c:set var="btnFindPasswd" value="비밀번호 찾기"/>
<c:set var="btnCancel" value="취소"/>
<c:set var="btnSetAutoOrder" value="자동발주설정"/>
<c:set var="btnSetOrder" value="수동발주"/>
<c:set var="btnCheckOrder" value="발주확인"/>
<c:set var="btnOrderHistory" value="과거발주이력"/>