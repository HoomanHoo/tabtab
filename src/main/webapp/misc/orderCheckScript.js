let btnDetail = document.querySelectorAll("input[name=showDetail]");

for (var i = 0; i < btnDetail.length; i++){
	btnDetail[i].addEventListener("click", showDetail);
}


function showDetail(){
	let orderNumber = this.id;
	window.location.href = "ordercheckdetail.net?onum=" + orderNumber;
}