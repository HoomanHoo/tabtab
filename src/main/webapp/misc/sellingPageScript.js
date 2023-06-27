let elements = document.querySelectorAll("input[name=mediName]");
let btnSell = document.querySelector("#btnSell");
let btnCancel = document.querySelector("#btnCancel");
let count = 0;

btnSell.addEventListener("click", sell);
btnCancel.addEventListener("click", cancel);

for (var i = 0; i < elements.length; i++){
	elements[i].addEventListener("click", add);
}

function add(){
	let tval = this.value; //제품명 - id로 써서 수량 id 나타냄
	let tid2 = tval + "2"; //제품 판매가
	let tid3 = tval + "3"; //현재 재고
	let tid4 = tval + "4"; //mediCode
	let tid5 = tval + "5"; //식별값 - mediCode id
	let tid6 = tval + "6"; //제품 수량 * 판매가	- sellingPrice id
	let tid7 = tval + "7"; //mediName id
	let tid8 = tval + "8"; //삭제버튼 id
	if(document.querySelector("#" + CSS.escape(tid5))){
		alert("이미 선택된 제품입니다");
	}
	else{
		let mediCode = document.createElement("input");
		mediCode.setAttribute("type", "hidden");
		mediCode.setAttribute("id", tid5);
		mediCode.setAttribute("name", "mediCode");
		mediCode.setAttribute("value", document.querySelector("#" + CSS.escape(tid4)).value);
		
		let mediName = document.createElement("input");
		mediName.setAttribute("type", "text");
		mediName.setAttribute("name", "mediName");
		mediName.setAttribute("id", tid7);
		mediName.setAttribute("class", "col");
		mediName.setAttribute("value", tval);
		mediName.setAttribute("readonly", "true");
		
		let sellingQntity = document.createElement("input");
		sellingQntity.setAttribute("type", "number");
		sellingQntity.setAttribute("name", "sellingQuan");
		sellingQntity.setAttribute("id", tval);
		sellingQntity.setAttribute("class", "col-2");
		sellingQntity.setAttribute("min", 1);
		sellingQntity.setAttribute("max", document.querySelector("#" + CSS.escape(tid3)).value);
		sellingQntity.setAttribute("value", 1);
		
		let sellingPrice = document.createElement("input");
		sellingPrice.setAttribute("type", "text");
		sellingPrice.setAttribute("class", "col");
		sellingPrice.setAttribute("id", tid6);
		sellingPrice.setAttribute("name", "sellingPrice");
		sellingPrice.setAttribute("value", document.querySelector("#" + CSS.escape(tid2)).value);
		sellingPrice.setAttribute("readonly", "true");
		
		let btnDelete = document.createElement("input");
		btnDelete.setAttribute("type", "button");
		btnDelete.setAttribute("id", tid8);
		btnDelete.setAttribute("name", "btnDelete");
		btnDelete.setAttribute("class", "col");
		btnDelete.setAttribute("value", "삭제");
		
		let div = document.createElement("div");
		div.setAttribute("class", "row");
		div.setAttribute("id", "innerList" + count)
		
		document.getElementById("sellList").appendChild(div)
		document.getElementById("innerList" + count).appendChild(mediCode);
		document.getElementById("innerList" + count).appendChild(mediName);
		document.getElementById("innerList" + count).appendChild(sellingQntity);
		document.getElementById("innerList" + count).appendChild(sellingPrice);
		document.getElementById("innerList" + count).appendChild(btnDelete);
		count++;
		calcAll()
		
		
	}
	document.getElementById(tval).addEventListener("input", calc);
	document.getElementById(tval).addEventListener("change", calc);
	document.getElementById(tid8).addEventListener("click", deleteElement);
	
}

function calc(){
	let tid = this.id; // 수량 id
	let tid2 = tid + "2"; //제품 판매가
	let tid6 = tid + "6"; //제품 수량 * 판매가	- sellingPrice id
	let sellQuan = this.value;
	let sellPrice = document.getElementById(tid2).value;
	let selected = document.getElementById(tid6);
	selected.setAttribute("value", sellQuan * sellPrice);
	calcAll();
}

function deleteElement(){
	let parent = this.parentNode;
	parent.replaceChildren();
	calcAll();
}

function sell(){
	
	let mediCodeElements = document.querySelectorAll("input[name=mediCode]");
	let sellingQuanElements = document.querySelectorAll("input[name=sellingQuan]");
	let sellingPriceElements = document.querySelectorAll("input[name=sellingPrice]");
	let allPrice = document.querySelector("#allPrice").value;
	let mediCodeArr = [];
	let sellingQuanArr = [];
	let sellingPriceArr = [];
	
	if(mediCodeElements[0] == null){
		alert("판매 리스트에 등록된 상품이 없습니다");
	}
	else{
		for(var i = 0; i < mediCodeElements.length; i++){
			mediCodeArr[i] = mediCodeElements[i].value;
			sellingQuanArr[i] = sellingQuanElements[i].value;
			sellingPriceArr[i] = sellingPriceElements[i].value;
		}
		
		let data = JSON.stringify({
			
			mediCode:mediCodeArr,
			sellingQuan:sellingQuanArr,
			sellingPrice:sellingPriceArr,
			
		});
		
		const xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					let result = xhr.responseText;
					cancel();
					let invenList = document.querySelector("#invenList");
					invenList.replaceChildren();
					invenList.insertAdjacentHTML("afterbegin", result);
					let elements = document.querySelectorAll("input[name=mediName]");
					for (var i = 0; i < elements.length; i++){
						elements[i].addEventListener("click", add);
					}
				}
				else{
					alert("처리에 실패했습니다 잠시 후 다시 시도해주세요");
				}
			}
		}
		
		xhr.open("POST", "sellingpro.net", true);
		xhr.setRequestHeader("Content-type", "application/json; charset=utf-8;");
		xhr.send(data);
	}
	
}

function cancel(){
	let sellList = document.querySelector("#sellList");
	sellList.replaceChildren();
	calcAll();
}

function calcAll(){
	let allPrice = document.querySelector("#allPrice");
	let priceList = document.querySelectorAll("input[name=sellingPrice]");
	let price = 0;
	for (var i = 0; i < priceList.length; i++){
		price = parseInt(price) + parseInt(priceList[i].value);
	}
	let result = "합계: " + price + "원";
	allPrice.setAttribute("value", result );
}

