let elements = document.querySelectorAll("input[name=mediName]");

for (var i = 0; i < elements.length; i++){
	elements[i].addEventListener("click", add);
}

function add(){
	let tid = this.id;
}