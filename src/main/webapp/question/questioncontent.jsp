<%@page import="java.text.SimpleDateFormat"%>
<%@page import="question.QuestionDataBean"%>
<%@page import="question.QuestionDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_question.css">
<script src="${project}script_question.js"></script>        

<h2> ${page_content} </h2>
<table>
    <tr>
        <th> ${str_con_num} </th>
        <td style="text-align:center"> ${number} </td>       
    </tr>
    <tr>
        <th> ${str_name} </th>
        <td style="text-align:center"> ${dto.name} </td>
        <th> ${str_w_date} </th>
        <td style="text-align:center">
            <fmt:formatDate value="${dto.w_date}" type="both"
                pattern="yyyy-MM-dd HH:mm"/>
        </td>
    </tr>
    <tr>
        <th> ${str_con_subject} </th>
        <td colspan="3"> &nbsp; ${dto.con_subject} </td>        
    </tr>
    <tr>
        <th> ${str_content} </th>
        <td colspan="3"> <pre>${dto.content}</pre> </td> 
    </tr>
    <tr>
        <th colspan="4">
            <input class= "inputbutton" type="button" value="${btn_modify}"
                 onclick= "location='questionmodifyform.net?num=${dto.con_num}&pageNum=${pageNum}'">
            <input class= "inputbutton" type="button" value="${btn_delete}"
                 onclick= "location='questiondeleteform.net?num=${dto.con_num}&pageNum=${pageNum}'">
            <input class= "inputbutton" type="button" value="${btn_reply}"
                 onclick= "location='questionwriteform.net?num=${dto.con_num}&ref=${dto.ref}&re_step=${dto.re_step}&re_level=${dto.re_level}'">
            <input class= "inputbutton" type="button" value="${btn_list}"
                 onclick= "location='question.net?pageNum=${pageNum}'">
        </th>
    </tr>
</table>