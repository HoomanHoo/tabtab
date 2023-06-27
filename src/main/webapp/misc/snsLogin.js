let kakaoBtn = document.querySelector("#kakaoLogin");
kakaoBtn.addEventListener("click", kakaoLogin);



function kakaoLogin(){
	Kakao.init('5ae502b5357437c8a7de1d19ccfa93e7');
	console.log(Kakao.isInitialized());
	Kakao.Auth.authorize({
		 redirectUri: 'http://localhost:8080/tabtab/kakaologin.net',
		 scope:"account_email",
	});
}

