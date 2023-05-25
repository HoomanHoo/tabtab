<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>



<c:set var="project" value= "/TabTab/admin/"/>

<c:set var="admin_page_login" value= "관리자 페이지"/>
<c:set var="page_input" value= "회 원 가 입"/>
<c:set var="page_confirm" value= "중 복 확 인"/>
<c:set var="admin_order_R" value= "발주 요청"/>
<c:set var="admin_signup_list" value="회원 가입 신청 목록"/>
<c:set var="admin_signupD" value="신청 상세 정보"/>
<c:set var="admin_signupin" value="정보 입력"/>

<c:set var="admin_signup_delete" value="승인 거부 하시겠습니까?"/>
<c:set var="msg_main" value= "비회원이시면 회원가입을 해주세요"/>
<c:set var="msg_sub" value= "님 안녕하세요."/>
<c:set var="msg_input" value= "회원정보를 입력해 주세요"/>
<c:set var="msg_email_x" value= "는 사용할 수 있습니다."/>
<c:set var="msg_email_o" value= "는 사용할 수 없습니다."/>
<c:set var="msg_list_x" value="회원 가입 신청이 없습니다."/>
<c:set var="msg_signup_x" value="승인 거부 후 데이터는 자동 삭제됩니다."/>
<c:set var="msg_signup_o" value="가입 승인이 완료되었습니다."/>


<c:set var="str_email" value= "이메일"/>
<c:set var="str_passwd" value= "비밀번호"/>
<c:set var="str_name" value= "이름"/>
<c:set var="str_mem_desc_code" value= "관리자면 2를 입력해 주세요"/>
<c:set var="str_supplier_name" value= "회사명"/>
<c:set var="str_pr_num" value= "사업자등록번호"/>
<c:set var="str_p_name" value= "사업장명"/>
<c:set var="str_p_address" value= "사업장 주소"/>


<c:set var="str_memcode" value="회원 번호"/>
<c:set var="str_semail" value="신청자 이메일"/>
<c:set var="str_info" value="상세 정보 확인"/>
<c:set var="str_infom" value="상세 정보"/>
<c:set var="str_list" value="신청목록"/>
<c:set var="str_prl_img" value="사업자등록증/약사면허증"/>

<c:set var="btn_login" value= "로그인"/>
<c:set var="btn_input" value= "회원가입"/>
<c:set var="btn_ok" value= "확인"/>
<c:set var="btn_ok_cancel" value= "확인취소"/>
<c:set var="btn_cancel" value= "취소"/>
<c:set var="btn_input_cancel" value= "가입취소"/>
<c:set var="btn_confirm" value= "중복확인"/>
<c:set var="btn_sok" value= "승인"/>
<c:set var="btn_sok_cancel" value= "승인거부"/>
<c:set var="btn_cb_list" value= "목록으로 돌아가기"/>
<c:set var="btn_sEmail" value= "이메일 전송"/>


<!-- 지워도 되는데 일단 남긴애들--------------- -->
<c:set var="page_delete" value= "회 원 탈 퇴"/>
<c:set var="page_modify" value= "회원 정보 수정"/>
<c:set var="msg_login" value= "회원가입에 성공했습니다."/>
<c:set var="msg_passwd" value= "비밀번호를 다시 확인해주세요"/>
<c:set var="msg_modify" value= "수정할 정보를 입력하세요."/>
<c:set var="btn_modify" value= "정보수정"/>
<c:set var="btn_delete" value= "회원탈퇴"/>
<c:set var="btn_logout" value= "로그아웃"/>
<c:set var="btn_del" value= "탈퇴"/>
<c:set var="btn_del_cancel" value= "탈퇴취소"/>
<c:set var="btn_mod" value= "수정"/>
<c:set var="btn_mod_cancel" value= "수정취소"/>



