let btnSetAutoOrder = document.querySelector("input[name=btnOrderSetting]");
let btnDelete = document.querySelectorAll("input[name=btnDelete");


btnSetAutoOrder.addEventListener("click", send);

for(var i = 0; i < btnDelete.length; i++){
	btnDelete[i].addEventListener("click", deleteSetting);
}

	
function send(){
	window.location.href = "autoordersetting.net";
}

function deleteSetting(){
	let tid = this.id;
	let tid2 = tid + "2";
	let tid3 = tid + "3";
	let tid4 = tid + "4";
	let tid5 = tid + "5";
	let tid6 = tid + "6";
	let value = document.getElementById(tid6).value;
	let data = JSON.stringify({ mediCode:value });
	
	const xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			if(xhr.status == 200){
				let result = xhr.responseText;
			//	document.getElementById(tid6).remove();
			//	document.getElementById(tid).remove();
			//	document.getElementById(tid2).remove();
			//	document.getElementById(tid3).remove();
			//	document.getElementById(tid4).remove();
			//	document.getElementById(tid5).remove();
				document.querySelector("#list").replaceChildren();
				document.querySelector("#list").innerHTML = result;
				alert(tid + "가 삭제되었습니다");
				let btnDelete = document.querySelectorAll("input[name=btnDelete");
				for(var i = 0; i < btnDelete.length; i++){
					btnDelete[i].addEventListener("click", deleteSetting);
				}

			}
			else{
				let result = xhr.responseText;
				alert(result);
			}
		}
	};
	xhr.open("POST", "deleteautoordersetting.net", true);
	xhr.setRequestHeader("Content-type", "application/json; charset=utf-8;");
	xhr.send(data);
	
}