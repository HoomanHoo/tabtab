let btnWarehousing = document.querySelector("#warehousing");
let btnBack = document.querySelector("#back");

btnBack.addEventListener("click", back);
btnWarehousing.addEventListener("click", warehousing);

function back(){
	window.location.href = "/tabtab/orderhistory.net";
}

function warehousing(event){
	let mediCode = Array.from(document.querySelectorAll("input[name=mediCode]"));
	let dwQuan = Array.from(document.querySelectorAll("input[name=dwQuan]"));
	let oNum = document.querySelector("input[name=oNum]").value;
	let mediCodeArr = [];
	let dwQuanArr = [];

	for(var i = 0; i < mediCode.length; i++){
		mediCodeArr[i] = mediCode[i].value;
		dwQuanArr[i] = dwQuan[i].value;
	}
	let param1 = {
					mediCode:mediCodeArr,
					dwQuan:dwQuanArr,
					orderNumber:oNum
				};
	$.ajax(
		{
			url:"/tabtab/historydetailpro.net",
			contentType: "application/json; charset=utf-8;",
			data:JSON.stringify(param1),
			type:"POST",
			dataType:"text",
			success:function(data){
				let arr = JSON.parse(data)
				var table = "";
				for(var i = 0; i < arr.length; i++){
					var mediName = document.createTextNode(arr[i].medi_name);
					var rtInven = document.createTextNode(arr[i].rt_inven);
					var tr = document.createElement("tr");
					var td1 = document.createElement("td");
					var td2 = document.createElement("td");
					
					td1.appendChild(mediName);
					td2.appendChild(rtInven);
					tr.appendChild(td1);
					tr.appendChild(td2);
					
					var tbody = document.querySelector("#newTable");
					tbody.appendChild(tr);
				}
				$("#default").remove();
				$("#warehousing").remove();
				alert(mediCode.length + "개 항목 입고되었습니다");
				document.querySelector("#newTable").innerHTML = txt;
				
			},
			error:function(request, status, error){
				alert("처리에 실패했습니다 잠시 뒤에 시도해주세요");
			}
		}
	);
}