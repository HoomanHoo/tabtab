//여기는 ~이런 경우면 안돼게 막는 페이지
var emailerror = "이메일를 입력하세요.";
var passwderror = "비밀번호를 입력하세요.";
var repasswderror ="비밀번호가 다릅니다.";
var pl_imgerror = "약사 면허증을 등록하세요.";
var pr_imgerror = "사업자등록증을 등록하세요.";
//var telerror = "전화번호를 입력하세요.";

var emailterror = "이메일 형식(@)에 맞지 않습니다.";

var confirmerror = "중복확인을 해주세요.";

var inputerror = "회원가입에 실패했습니다.\n 잠시 후 다시 시도하세요.";
var emailxerror ="입력하신 이메일이 없습니다.\n다시 확인하세요.";
var passerror ="입력하신 비밀번호가 다릅니다.\n다시 확인하세요.";
var deleteerror ="회원탈퇴에 실패했습니다\n 잠시후 다시 시도하세요.";
var modifyerror ="회원정보수정에 실패했습니다\n 잠시후 다시 시도하세요.";


function erroralert(msg) {
	alert(msg);
	history.back();
	//이동한 페이지들의 주소를 갖고 있음 히스토리가
}


//회원정보 수정
function usermodifycheck() {
	if( ! usermodifyform.password.value) {
		alert(passwderror);
		usermodifyform.password.focus();
		return false;
	}else if (usermodifyform.password.value != usermodifyform.repasswd.value) {
		alert(repasswderror);
		usermodifyform.password.focus();
		return false;
	}
}

// 회원탈퇴
function userpasswdcheck() {
	if( ! userpasswdform.password.value) {
		alert(passwderror);
		userpasswdform.password.focus();
		return false;
	}
}


//아이디 중복확인
function userconfirmemail() {
	if( ! userinputform.email.value) {
		alert(emailerror);
		userinputform.email.focus();
	} else {			//새팝업을 띄워라
		url = "userconfirmemail.net?email=" + userinputform.email.value;	//여기도 url주소가 들어가는 자리confirmId.jsp
		open(url, "confirm", "scrollbar=no, statusbar=no, titlebar=no, menubar=no, width=400px, height=250px");
	}
}
	
function userconfirmcheck() {
	if( ! userconfirmform.email.value) {
		alert(emailerror);
		userconfirmform.email.focus();
		return false;
	}
}

function usersetemail(email) {
	opener.document.userinputform.email.value = email;
	opener.document.userinputform.check.value = "1";
	window.close();
}



//가입페이지
function userinputcheck() {
	if(userinputform.check.value =="0") {
		alert(confirmerror);
		userinputform.email.focus();
		return false;
	}
	if(! userinputform.email.value) {
		alert( emailerror);
		userinputform.email.focus();
		return false;	
	}else if ( ! userinputform.pr_img.value){
		alert( pr_imgerror);
		return false;
	}else if ( ! userinputform.pl_img.value){
		alert( pl_imgerror);
		return false;
	}
	if(userinputform.email.value.indexOf("@") == -1 ) {//-1이면 값이 없다 값있으면 있는 문자열의 위치를 알려줌
		alert(emailterror);
		userinputform.email.value="";
		userinputform.email.focus();
		return false;
	}
}

//메인페이지>로그인 화면에서 아이디 비번 입력안 했음 경고창을 띄어라//메인폼의 아이디 값이 데이터가 없다면 이프문을 돌아라
function usermaincheck() {//매개 변수 넘어오는거 없음
	if( ! usermainform.email.value ) {
		alert( emailerror );//iderror가 써있는 알림창을 띄워라
		usermainform.email.focus();
		return false;
	} else if ( ! usermainform.password.value ) {
		alert(passwderror );
		usermainform.password.focus();
		return false;
	}
}
