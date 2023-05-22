let btnWarehousing = document.querySelector("#warehousing");
let btnBack = document.querySelector("#back");

btnBack.addEventListener("click", back);
btnWarehousing.addEventListener("click", warehousing);

function back(){
	history.back();
}

function warehousing(event){
	let mediCode = Array.from(document.querySelectorAll("input[name=mediCode]"));
	let orderQuan = Array.from(document.querySelectorAll("input[name=orderQuan]"));
	let mediCodeArr = [];
	let orderQuanArr = [];
	for(var i = 0; i < mediCode.length; i++){
		mediCodeArr[i] = mediCode[i].value;
		orderQuanArr[i] = orderQuan[i].value;
	}
	let param1 = {
					mediCode:mediCodeArr,
					orderQuan:orderQuanArr
				};
	
	
	$.ajax(
		{
			url:"/tabtab/historydetailpro.net",
			contentType: "application/json; charset=utf-8;",
			data:JSON.stringify(param1),
			type:"POST",
			dataType:"text",
			success:function(data){
				alert(data);
			},
			error:function(request, status, error){
				alert("fail");
			}
		}
	);
}