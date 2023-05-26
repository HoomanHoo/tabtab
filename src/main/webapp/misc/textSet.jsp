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
<c:set var="textOrderQuantity" value="발주수량(EA)"/>
<c:set var="textDeliveryQuantity" value="공급수량(EA)"/>
<c:set var="textDeliveryPrice" value="공급가액(원)"/>
<c:set var="textPrice" value="발주가(원)"/>
<c:set var="textMediName" value="제품명"/>
<c:set var="textChiefIngre" value="주성분"/>
<c:set var="textVariation" value="구분"/>
<c:set var="textEtc" value="전문"/>
<c:set var="textOtc" value="일반"/>
<c:set var="textPName" value="약국명"/>
<c:set var="triggerQuan" value="발주 기준 수량"/>
<c:set var="aoQuan" value="발주 수량"/>
<c:set var="findPasswd" value="비밀번호 찾기"/>
<c:set var="myPage" value="마이페이지"/>
<c:set var="questionBoard" value="문의사항"/>
<c:set var="inventory" value="재고확인"/>
<c:set var="order" value="발주"/>
<c:set var="sell" value="판매"/>
<c:set var="search" value="검색"/>
<c:set var="orderHistory" value="과거 발주 내역"/>
<c:set var="setPeriod" value="기간 설정"/>
<c:set var="setOneWeek" value="1주일"/>
<c:set var="setOneMonth" value="1개월"/>
<c:set var="setThreeMonth" value="3개월"/>
<c:set var="orderDate" value="발주일자"/>
<c:set var="orderNumber" value="발주번호"/>
<c:set var="sumOrderQuan" value="총 발주량(EA)"/>
<c:set var="sumSupplyValue" value="총 공급가액(원)"/>
<c:set var="orderSupplier" value="거래처"/>
<c:set var="orderMemo" value="메모"/>
<c:set var="textDeliveryState" value="배송상태"/>
<c:set var="textRemarks" value="비고"/>
<c:set var="deliNotYet" value="미배송"/>
<c:set var="deliStart" value="배송중"/>
<c:set var="deliEnd" value="배송완료"/>
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
<c:set var="btnBack" value="뒤로가기"/>
<c:set var="btnWarehousing" value="입고"/>
<c:set var="btnDetailRequest" value="내용확인"/>
<c:set var="btnDelivery" value="배송"/>

