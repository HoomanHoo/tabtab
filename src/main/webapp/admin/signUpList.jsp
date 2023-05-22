<%@page import="java.text.SimpleDateFormat"%>
<%@page import="admin.AdminDataBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="admin.AdminDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link href="${project}style.css" rel="stylesheet" type="text/css">
<script src="${project}script_admin.js"></script>

<h2>${admin_signup_list}</h2>

<table>
	<tr>
		<th style="width:15%"> ${str_memcode}</th>
		<th style="width:40%"> ${str_email}</th>
		<th style="width:15%"> ${str_info}</th>		<!-- %양은 뒤%기준으로 구간을 나눔 -->
	</tr>
	
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
					${mem_code}
					<c:set var="number" value="${number-1}"/><!-- 하나뺴서 다시 넣어라 여기 댓글 파트 사진>ㄴ이랑 투명한거-->
				</td>
				<td>${dto.email}
					<!--<a href="boardcontent.do?num=${dto.num}&pageNum=${pageNum}&number=${number+1}">
						 email==memcode 
					</a>-->
				</td>
				<td style="text-align:center">
					<input class="inputbutton" type="button" value="${str_infom}"
						onclick="adminsignupd.net?mem_code=${dto.mem_code}&pageNum=${pageNum}&number=${number+1}">
				</td>
			</tr>
		</c:forEach>
	</c:if>
</table>
<br>

<center>
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
</center>

