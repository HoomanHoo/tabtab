<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>



<c:set var="project" value= "/TabTab/user/"/>

<c:set var="page_input" value= "회 원 가 입"/>
<c:set var="page_confirm" value= "중 복 확 인"/>
<c:set var="inventory_page" value= "현 재 재 고"/>

<c:set var="admin_page_login" value= "관리자 페이지"/>
<c:set var="admin_order_R" value= "발주 요청 페이지"/>

<c:set var="user_page_login" value= "약사 로그인"/>
<c:set var="user_signup_page" value= "화원 가입 신청"/>
<c:set var="user_mypage" value= "마이페이지"/>

<c:set var="page_delete" value= "회 원 탈 퇴"/>
<c:set var="page_modify" value= "회원 정보 수정"/>
	
<c:set var="msg_main" value= "비회원이시면 회원가입을 해주세요"/>
<c:set var="msg_signup" value= "비밀번호는 신청 후 2 영업일 이내에 승인 여부를 판단하여 입력하신 이메일로 보내드립니다."/>
<c:set var="msg_email_x" value= "는 사용할 수 있습니다."/>
<c:set var="msg_email_o" value= "는 사용할 수 없습니다."/>
<c:set var="msg_login" value= "회원가입에 성공했습니다."/>
<c:set var="msg_sub" value= "님 안녕하세요."/>
<c:set var="msg_passwd" value= "비밀번호를 다시 확인해주세요"/>
<c:set var="msg_modify" value= "수정할 정보를 입력하세요."/>
<c:set var="msg_upload" value= "10 MB 이하의 PDF, 이미지 파일만 업로드 가능합니다."/>
	
<c:set var="str_supplier_name" value= "회사명"/>
<c:set var="str_pl_img" value= "약사 면허증 사진"/>
<c:set var="str_pr_img" value= "사업자 등록증 사진"/>
<c:set var="str_email" value= "이메일"/>
<c:set var="str_reg_date" value= "가입일자"/>
<c:set var="str_mem_desc_code" value= "관리자면 2를 입력해 주세요"/>
<c:set var="str_passwd" value= "비밀번호"/>
<c:set var="str_p_address" value= "사업지 주소"/>
<c:set var="btn_u_modify" value= "회원정보 수정"/>
	
	
<c:set var="btn_login" value= "로그인"/>
<c:set var="btn_ok" value= "확인"/>
<c:set var="btn_cancel" value= "취소"/>
<c:set var="btn_input" value= "회원가입신청"/>
<c:set var="btn_input_cancel" value= "가입취소"/>
<c:set var="btn_confirm" value= "중복확인"/>
<c:set var="btn_passwd" value= "비밀번호 찾기"/>


<c:set var="btn_ok" value= "확인"/>
<c:set var="btn_ok_cancel" value= "확인취소"/>
<c:set var="btn_modify" value= "정보수정"/>
<c:set var="btn_delete" value= "회원탈퇴"/>
<c:set var="btn_logout" value= "로그아웃"/>
<c:set var="btn_del" value= "탈퇴"/>
<c:set var="btn_del_cancel" value= "탈퇴취소"/>
<c:set var="btn_mod" value= "수정"/>
<c:set var="btn_mod_cancel" value= "수정취소"/>
