<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

    <c:set var="project" value="/tabtab/inventory/"/>
    
    <c:set var="msg_inventorylist_x" value="재고가 없습니다 주문해 주세요"/>
    
    <c:set var="page_inventory" value="재 고 현 황"/>
    <c:set var="page_inventorylist" value="재 고 목 록"/>
    <c:set var="str_count" value="전체목록"/>
    
    <c:set var="str_medi_name" value="약품명"/>
    <c:set var="str_supply_value" value="공급가"/>
    <c:set var="str_selling_price" value="판매가"/>
    <c:set var="str_rt_inven" value="남은 수량"/>
    <c:set var="str_manu_com" value="제조사"/>
    <c:set var="str_chief_ingre" value="주성분"/>
    
    <c:set var="str_vari_code" value="구분"/>    
    <c:set var="str_reg_date" value="검색일"/>
   
    <c:set var="str_ao_setting" value="자동주문 설정하기"/>  