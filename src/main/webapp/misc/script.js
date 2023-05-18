var inputName = "이름을 입력해주세요";
var inputEmail = "이메일을 입력해주세요";




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