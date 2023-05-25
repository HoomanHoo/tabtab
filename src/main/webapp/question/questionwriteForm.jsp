<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link rel="stylesheet" type="text/css" href="${project}style_question.css">
<script src="${project}script_question.js"></script> 

<h2> ${page_question} </h2>

<form method="post" action="questionwritepro.net" name="writeform" onsubmit="return writecheck()">
    <input type="hidden" name="con_num" value="${con_num}">
    <input type="hidden" name="ref" value="${ref}">
    <input type="hidden" name="re_step" value="${re_step}">
    <input type="hidden" name="re_level" value="${re_level}">
    <input type="hidden" name="mem_code" value="${mem_code}">
    
    <table>
        <tr>
            <th colspan="2" style="text-align:right">
                <a href="question.net">${str_questionlist}</a>&nbsp;&nbsp;&nbsp;            
            </th>
        </tr>
        <tr>
            <th> ${str_mem_code} </th>
            <td>
                ${dto.mem_code}               
            </td>
        </tr>
        <tr>
            <th> ${str_con_subject} </th>
            <td>
                <input class="input" type="text" maxlength="200" name="subject" autofocus>
            </td>
        </tr>
        <tr>
            <th> ${str_content} </th>
            <td>
                 <textarea name="content" rows="10" cols="40"></textarea>
            </td>
        </tr> 
         
        <tr>
            <th colspan="2">
                 <input class="inputbutton" type="submit" value="${btn_write}">
                 <input class="inputbutton" type="reset" value="${btn_cancel}">
                 <input class="inputbutton" type="button" value="${btn_list}" 
                     onclick="location='question.net'">
            </th>
        </tr>   
    </table>
</form>