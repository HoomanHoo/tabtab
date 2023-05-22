var inputName = "이름을 입력해주세요";
var inputEmail = "이메일을 입력해주세요";
var sendPasswd = "입력하신 이메일로 비밀번호가 발송되었습니다"
var selectmedi = "의약품을 선택해주세요";


function checkInput(){
	if(!fPasswdInput.name.value){
		alert(inputName);
		fPasswdInput.name.focus();
		return false;
	}
	if(!fPasswdInput.email.value){
		alert(inputEmail);
		fPasswdInput.email.focus();
		return false;
	}	
}

function alertShow(msg){
	alert(msg);
}





