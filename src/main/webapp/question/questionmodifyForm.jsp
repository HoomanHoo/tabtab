<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_question.css">
<script src="${project}script_question.js"></script>    

<h2> ${page_modify} </h2>

<form method="post" action="questionmodifyview.net" name="mem_codeform" onsubmit="return mem_codecheck()">
    <input type="hidden" name="con_num" value="${con_num}">
    <input type="hidden" name="pageNum" value="${pageNum}"> 
    <input type="hidden" name="mem_code" value="${mem_code}">
    
    <table>
        <tr>
            <th colspan="2"> ${msg_mem_code} </th>
        </tr>
        <tr>
            <th> ${str_mem_code} </th>
            <td> <c:set var="number" value="${mem_code}}"/>
                <c:out value="${mem_code}"/>
            </td>
        </tr>       
        <tr>
            <th colspan="2">
                <input class="inputbutton" type="submit" value="${btn_mod}">
                <input class="inputbutton" type="button" value="${btn_mod_cancel}"
                    onclick="location='question.net?pageNum=${pageNum}'">
            </th>
        </tr>
    </table>    
</form>