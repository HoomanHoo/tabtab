//여기는 ~이런 경우면 안돼게 막는 페이지
var emailerror = "이메일를 입력하세요.";
var passwderror = "비밀번호를 입력하세요.";
var repasswderror ="비밀번호가 다릅니다.";
var nameerror = "이름을 입력하세요.";
var p_nameerror = "사업장명을 입력하세요.";
var pr_numerror = "사업자등록번호를 입력하세요.";
var p_addresserror = "사업장 주소를 입력하세요.";

var emailterror = "이메일 형식(@)에 맞지 않습니다.";

var confirmerror = "중복확인을 해주세요.";

var inputerror = "회원가입에 실패했습니다.\n 잠시 후 다시 시도하세요.";
var emailxerror ="입력하신 이메일이 없습니다.\n다시 확인하세요.";
var passerror ="입력하신 비밀번호가 다릅니다.\n다시 확인하세요.";
var deleteerror ="회원탈퇴에 실패했습니다\n 잠시후 다시 시도하세요.";
var modifyerror ="회원정보수정에 실패했습니다\n 잠시후 다시 시도하세요.";
var emailNerror = "이메일 전송에 실패했습니다.\n 잠시 후 다시 시도하세요.";

function erroralert(msg) {
	alert(msg);
	history.back();
	//이동한 페이지들의 주소를 갖고 있음 히스토리가
}


//회원정보 수정
function modifycheck() {
	if( ! modifyform.password.value) {
		alert(passwderror);
		modifyform.password.focus();
		return false;
	}else if (modifyform.password.value != modifyform.repasswd.value) {
		alert(repasswderror);
		modifyform.password.focus();
		return false;
	}
}

// 회원탈퇴
function passwdcheck() {
	if( ! passwdform.password.value) {
		alert(passwderror);
		passwdform.password.focus();
		return false;
	}
}


//아이디 중복확인
function confirmemail() {
	if( ! inputform.email.value) {
		alert(emailerror);
		inputform.email.focus();
	} else {			//새팝업을 띄워라
		url = "adminconfirmemail.net?email=" + inputform.email.value;	//여기도 url주소가 들어가는 자리confirmId.jsp
		open(url, "confirm", "scrollbar=no, statusbar=no, titlebar=no, menubar=no, width=400px, height=250px");
	}
}
	
function confirmcheck() {
	if( ! confirmform.email.value) {
		alert(emailerror);
		confirmform.email.focus();
		return false;
	}
}

function setemail(email) {
	opener.document.inputform.email.value = email;
	opener.document.inputform.check.value = "1";
	window.close();
}



//가입페이지
function inputcheck() {
	if(inputform.check.value =="0") {
		alert(confirmerror);
		inputform.name.focus();
		return false;
	}
	
	if( ! inputform.name.value ) {
		alert(nameerror);
		inputform.name.focus();
		return false;	
	} else if(! inputform.email.value) {
		alert( emailerror);
		inputform.email.focus();
		return false;	
	}else if ( ! inputform.password.value) {
		alert(passwderror);
		inputform.password.focus();
		return false;	
	}else if ( ! inputform.mem_desc_code.value){
		alert(codeerror);
		inputform.mem_desc_code.focus();	
	}

	if(inputform.email.value.indexOf("@") == -1 ) {//-1이면 값이 없다 값있으면 있는 문자열의 위치를 알려줌
		alert(emailterror);
		inputform.email.value="";
		inputform.email.focus();
		return false;
	}
}
	/*if(inputform.email.value) {
		if(inputform.email2.value == "0" ) {
			//직접입력
			if(inputform.email1.value.indexOf("@") == -1 ) {//-1이면 값이 없다 값있으면 있는 문자열의 위치를 알려줌
				alert(emailerror);
				inputform.email.value="";
				inputform.email.focus();
				return false;
			}
		} else {
			if(inputform.email.value.indexOf("@")!= -1 ) {//선택입력
				alert(emailerror);
				inputform.email.value="";
				inputform.email1.focus();
				return false;
			}
		}
	}*/



//메인페이지>로그인 화면에서 아이디 비번 입력안 했음 경고창을 띄어라//메인폼의 아이디 값이 데이터가 없다면 이프문을 돌아라
function maincheck() {//매개 변수 넘어오는거 없음
	if( ! mainform.email.value ) {
		alert( emailerror );//iderror가 써있는 알림창을 띄워라
		mainform.email.focus();
		return false;
	} else if ( ! mainform.password.value ) {
		alert(passwderror );
		mainform.password.focus();
		return false;
	}
}

//승인거부 팝업창 띄워라
function deletemember() {
	//새팝업을 띄워라
	url = "adminsignupdelete.net?email=" + signupd.email.value;	//여기도 url주소가 들어가는 자리confirmId.jsp
	open(url, "delete", "scrollbar=no, statusbar=no, titlebar=no, menubar=no, width=400px, height=250px");
}
//정보삭제
function deleteinfo() {
}

//관리자가 유저 회원가입
function auinputcheck() {
	if( ! signin.auname.value ) {
		alert(nameerror);
		signin.auname.focus();
		return false;	
	} else if(! signin.p_name.value) {
		alert( p_nameerror);
		signin.p_name.focus();
		return false;	
	}else if ( ! signin.p_address.value) {
		alert(p_addresserror);
		signin.p_address.focus();
		return false;	
	}else if ( ! signin.pr_num.value){
		alert(pr_numerror);
		signin.pr_num.focus();	
	}

}
//이메일로 승인완료되었다와 함꼐 비밀번호 보내는거 
function semail() {
	
}
/*	
	
	
	//이메일 직접입력일 경우 @가 없으면 경고
	//선택입력일 경우 @가 있으면 경고 

	//------------
	if(직접입력일 시) {
		if(@ 없으면) {
			경고창 띄움
		}
	} else if(@ 있으면) {
		경고창 띄움
		}
	//----------
	



*/

