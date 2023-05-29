
let selectElement = document.querySelectorAll("input[name=mediName]");
for(var i = 0; i < selectElement.length; i++){
	selectElement[i].addEventListener("click", add);
}

let count = 0;

function add(){
	let tval = this.value; //mediName 의 값
	let tid3 = tval + "3"; //mediCode
	let tid4 = tval + "4"; //supplyValue
	let tid5 = tval + "5"; //식별값
	
	if(document.querySelector("#" + CSS.escape(tid5))){
		alert("이미 선택된 제품입니다");
	}
	else{
		let mediCode = document.createElement("input");
		mediCode.setAttribute("type", "hidden");
		mediCode.setAttribute("name", "mediCode");
		mediCode.setAttribute("value", document.getElementById(tid3).value);
		
		let mediName = document.createElement("input");
		mediName.setAttribute("type", "text");
		mediName.setAttribute("name", "mediName");
		mediName.setAttribute("class", "col");
		mediName.setAttribute("value", tval);
		mediName.setAttribute("readonly", "true");
		
		let triggerQuan = document.createElement("input");
		triggerQuan.setAttribute("type", "number");
		triggerQuan.setAttribute("name", "triggerQuan");
		triggerQuan.setAttribute("class", "col")
		triggerQuan.setAttribute("min", 0);
		triggerQuan.setAttribute("value", "0");
		
		let aoQuan = document.createElement("input");
		aoQuan.setAttribute("type", "number");
		aoQuan.setAttribute("name", "aoQuan");
		aoQuan.setAttribute("class", "col");
		aoQuan.setAttribute("min", 1);
		aoQuan.setAttribute("id", tval);
		aoQuan.setAttribute("value", 1);
		
		let supplyValue = document.createElement("input");
		supplyValue.setAttribute("type", "text");
		supplyValue.setAttribute("name", "supplyValue");
		supplyValue.setAttribute("class", "col");
		supplyValue.setAttribute("id", tid5);
		supplyValue.setAttribute("value", document.querySelector("#" + CSS.escape(tid4)).value);
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
		document.getElementById(tval).addEventListener("input", calc);
		document.getElementById(tval).addEventListener("change", calc);
		
		
		console.log(tval);
}

function calc(){
	let tid = this.id;
	console.log(tid);
	let tid4 = tid + "4"; //supplyValue
	let tid5 = tid + "5";
	let aoQuan = this.value;
	let supplyValue = document.getElementById(tid4).value;
	let selected = document.querySelector("#" + CSS.escape(tid5));
	selected.setAttribute("value",aoQuan * supplyValue );
}
	