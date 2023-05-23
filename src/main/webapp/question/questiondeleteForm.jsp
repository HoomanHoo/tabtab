<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_question.css">
<script src="${project}script_question.js"></script>    

<h2> ${page_delete} </h2>

<form method="post" action="questiondeletepro.net" name="passwdform" onsubmit="return passwdcheck()">
    <input type="hidden" name="con_num" value="${con_num}">
    <input type="hidden" name="pageNum" value="${pageNum}"> 
    <table>
        <tr>
            <th colspan="2"> ${msg_passwd} </th>
        </tr>
        <tr>
            <th> ${str_passwd} </th>
            <td> <input class="input" type="password" name="passwd" maxlength="50" autofocus>
        </tr>       
        <tr>
            <th colspan="2">
                <input class="inputbutton" type="submit" value="${btn_del}">
                <input class="inputbutton" type="button" value="${btn_del_cancel}"
                    onclick="location='question.net?pageNum=${pageNum}'">
            </th>
        </tr>
    </table>    
</form>