
let selectElement = document.querySelectorAll("input[name=mediName]");
for(var i = 0; i < selectElement.length; i++){
	selectElement[i].addEventListener("click", add);
}

let count = 0;

function add(){
	let tid = this.id; //mediName 의 값
	let tid2 = tid + "2"; //주성분
	let tid3 = tid + "3"; //mediCode
	let tid4 = tid + "4"; //supplyValue
	let tid5 = tid + "5"; //식별값
	let tid6 = tid + "6";
	
	if(document.querySelector("#" + CSS.escape(tid5))){
		alert("이미 선택된 제품입니다");
	}
	else{
		let mediCode = document.createElement("input");
		mediCode.setAttribute("type", "hidden");
		mediCode.setAttribute("name", "mediCode");
		mediCode.setAttribute("id", CSS.escape(tid5));
		mediCode.setAttribute("value", document.querySelector("#" + CSS.escape(tid3)).value);
		
		let mediName = document.createElement("input");
		mediName.setAttribute("type", "text");
		mediName.setAttribute("name", "mediName");
		mediName.setAttribute("class", "col");
		mediName.setAttribute("value", document.querySelector("#" + CSS.escape(tid)).value);
		mediName.setAttribute("readonly", "true");
		
		let triggerQuan = document.createElement("input");
		triggerQuan.setAttribute("type", "number");
		triggerQuan.setAttribute("name", "triggerQuan");
		triggerQuan.setAttribute("class", "col")
		triggerQuan.setAttribute("min", 0);
		triggerQuan.setAttribute("id", document.querySelector("#" + CSS.escape(tid)).id);
		triggerQuan.setAttribute("value", "0");
		
		let aoQuan = document.createElement("input");
		aoQuan.setAttribute("type", "number");
		aoQuan.setAttribute("name", "aoQuan");
		aoQuan.setAttribute("class", "col");
		aoQuan.setAttribute("min", 1);
		aoQuan.setAttribute("id", document.querySelector(CSS.escape(tid6)));
		aoQuan.setAttribute("value", 1);
		
		let supplyValue = document.createElement("input");
		supplyValue.setAttribute("type", "text");
		supplyValue.setAttribute("name", "supplyValue");
		supplyValue.setAttribute("class", "col");
		supplyValue.setAttribute("id", document.querySelector( CSS.escape(tid)) + 7);
		supplyValue.setAttribute("value", "0");
		supplyValue.setAttribute("readonly", "true");
		
		let div = document.createElement("div");
		div.setAttribute("class", "row");
		div.setAttribute("id", "innerList" + count)
		
		document.getElementById("newList").appendChild(div)
		document.getElementById("innerList" + count).appendChild(mediCode);
		document.getElementById("innerList" + count).appendChild(mediName);
		document.getElementById("innerList" + count).appendChild(triggerQuan);
		document.getElementById("innerList" + count).appendChild(aoQuan);
		document.getElementById("innerList" + count).appendChild(supplyValue);
		count++;
		
		
	}
		let addedElement = document.querySelector("#" + CSS.escape(tid6));
		
		addedElement.addEventListener("input", calc);
		addedElement.addEventListener("change", calc);
}

function calc(){
	
	
	
}
	