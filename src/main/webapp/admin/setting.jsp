<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>



<c:set var="project" value= "/JavaWebProject/admin/"/>

<c:set var="page_main" value="메 인 페 이 지"/>
<c:set var="page_input" value= "회 원 가 입"/>
<c:set var="page_confirm" value= "중 복 확 인"/>
<c:set var="admin_page_login" value= "관리자 페이지"/>
<c:set var="admin_order_R" value= "발주 요청"/>

<c:set var="page_delete" value= "회 원 탈 퇴"/>
<c:set var="page_modify" value= "회원 정보 수정"/>
	
<c:set var="msg_main" value= "비회원이시면 회원가입을 해주세요"/>
<c:set var="msg_input" value= "회원정보를 입력해 주세요"/>
<c:set var="msg_email_x" value= "는 사용할 수 있습니다."/>
<c:set var="msg_email_o" value= "는 사용할 수 없습니다."/>
<c:set var="msg_login" value= "회원가입에 성공했습니다."/>
<c:set var="msg_sub" value= "님 안녕하세요."/>
<c:set var="msg_passwd" value= "비밀번호를 다시 확인해주세요"/>
<c:set var="msg_modify" value= "수정할 정보를 입력하세요."/>
	
<c:set var="str_supplier_name" value= "회사명"/>
<c:set var="str_passwd" value= "비밀번호"/>
<c:set var="str_name" value= "이름"/>
<c:set var="str_email" value= "이메일"/>
<c:set var="str_reg_date" value= "가입일자"/>
<c:set var="str_mem_desc_code" value= "관리자면 2를 입력해 주세요"/>
	
<c:set var="btn_login" value= "로그인"/>
<c:set var="btn_ok" value= "확인"/>
<c:set var="btn_cancel" value= "취소"/>
<c:set var="btn_input" value= "회원가입"/>
<c:set var="btn_input_cancel" value= "가입취소"/>
<c:set var="btn_confirm" value= "중복확인"/>

<c:set var="btn_ok" value= "확인"/>
<c:set var="btn_ok_cancel" value= "확인취소"/>
<c:set var="btn_modify" value= "정보수정"/>
<c:set var="btn_delete" value= "회원탈퇴"/>
<c:set var="btn_logout" value= "로그아웃"/>
<c:set var="btn_del" value= "탈퇴"/>
<c:set var="btn_del_cancel" value= "탈퇴취소"/>
<c:set var="btn_mod" value= "수정"/>
<c:set var="btn_mod_cancel" value= "수정취소"/>





<c:set var="admin_signup_list" value= "회원 가입 신청"/>
<c:set var="page_write" value="글 작 성"/>
<c:set var="page_content" value="글 보 기"/>
<c:set var="page_delete" value="글 삭 제"/>
<c:set var="page_modify" value="글 수 정"/>

<c:set var="msg_list_x" value="회원 가입 신청이 없습니다."/>
<c:set var="msg_passwd" value="비밀번호를 확인해주세요."/>
<c:set var="msg_modify" value="수정할 정보를 입력하세요."/>


<c:set var="str_memcode" value="회원 번호"/>
<c:set var="str_email" value="신청자 이메일"/>
<c:set var="str_info" value="상세 정보 확인"/>
<c:set var="str_infom" value="상세 정보"/>
<c:set var="str_list" value="신청목록"/>

<c:set var="btn_write" value="작성"/>
<c:set var="btn_cancel" value="취소"/>
<c:set var="btn_list" value="목록"/>
<c:set var="btn_modify" value="글수정"/>
<c:set var="btn_delete" value="글삭제"/>
<c:set var="btn_reply" value="답글"/>
<c:set var="btn_del" value="삭제"/>
<c:set var="btn_del_cancel" value="삭제취소"/>
<c:set var="btn_mod" value="수정"/>
<c:set var="btn_mod_cancel" value="수정취소"/>

<c:set var="str_passwd" value="비밀번호"/>
<c:set var="str_writer" value="작성자"/>
<c:set var="str_readcount" value="조회수"/>
<c:set var="str_ip" value="IP"/>
<c:set var="str_r_date" value="신청일"/>
<c:set var="str_content" value="글내용"/>
<c:set var="str_count" value="전 체 글"/>