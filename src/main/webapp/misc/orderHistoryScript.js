var setPeriod = document.querySelector("#setPeriod");
var oDates = document.querySelectorAll("input[name=oDate]");

setPeriod.addEventListener("change", calc); 

function calc(event){
	var date = new Date();
	var settedPeriod = setPeriod.value;
	
	if(settedPeriod == "1w"){
		date.setDate(date.getDate() - 7);
		
		
		for (var i = 0; i < oDates.length; i++){
			var oDate = new Date(oDates[i].value);
			

			
			if(oDate < date){
		
				var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
	
				$("input[name=" + name + "1]").prop('type', "hidden");
				$("input[name=" + name + "2]").prop('type', "hidden");
				$("input[name=" + name + "3]").prop('type', "hidden");
				$("input[name=" + name + "4]").prop('type', "hidden");
				$("input[name=" + name + "5]").prop('type', "hidden");
				$("input[name=" + name + "6]").prop('type', "hidden");
				$("input[name=" + name + "7]").prop('type', "hidden");
			}
			else{
				var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
	
				$("input[name=" + name + "1]").prop('type', "text");
				$("input[name=" + name + "2]").prop('type', "text");
				$("input[name=" + name + "3]").prop('type', "text");
				$("input[name=" + name + "4]").prop('type', "text");
				$("input[name=" + name + "5]").prop('type', "text");
				$("input[name=" + name + "6]").prop('type', "text");
				$("input[name=" + name + "7]").prop('type', "text");
			}
		}
	}
	else if(settedPeriod == "1m"){
		date.setDate(date.getDate() - 30);
	
		
		for (var i = 0; i < oDates.length; i++){
			var oDate = new Date(oDates[i].value);
			
			if(oDate < date){

				var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
	
				$("input[name=" + name + "1]").prop('type', "hidden");
				$("input[name=" + name + "2]").prop('type', "hidden");
				$("input[name=" + name + "3]").prop('type', "hidden");
				$("input[name=" + name + "4]").prop('type', "hidden");
				$("input[name=" + name + "5]").prop('type', "hidden");
				$("input[name=" + name + "6]").prop('type', "hidden");
				$("input[name=" + name + "7]").prop('type', "hidden");
			}
			else{
				var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
		
				$("input[name=" + name + "1]").prop('type', "text");
				$("input[name=" + name + "2]").prop('type', "text");
				$("input[name=" + name + "3]").prop('type', "text");
				$("input[name=" + name + "4]").prop('type', "text");
				$("input[name=" + name + "5]").prop('type', "text");
				$("input[name=" + name + "6]").prop('type', "text");
				$("input[name=" + name + "7]").prop('type', "text");
			}
		}
	}
	else if(settedPeriod == "3m"){
		date.setDate(date.getDate() - 90);
	
		
		for (var i = 0; i < oDates.length; i++){
			var oDate = new Date(oDates[i].value);
			
			if(oDate < date){
	
				var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
			
				
				$("input[name=" + name + "1]").prop('type', "hidden");
				$("input[name=" + name + "2]").prop('type', "hidden");
				$("input[name=" + name + "3]").prop('type', "hidden");
				$("input[name=" + name + "4]").prop('type', "hidden");
				$("input[name=" + name + "5]").prop('type', "hidden");
				$("input[name=" + name + "6]").prop('type', "hidden");
				$("input[name=" + name + "7]").prop('type', "hidden");
			}
			else{
				var name = oDate.getFullYear().toString() + ("0" + (oDate.getMonth() + 1)).slice(-2).toString() + ("0" + oDate.getDate()).slice(-2).toString();
		
				$("input[name=" + name + "1]").prop('type', "text");
				$("input[name=" + name + "2]").prop('type', "text");
				$("input[name=" + name + "3]").prop('type', "text");
				$("input[name=" + name + "4]").prop('type', "text");
				$("input[name=" + name + "5]").prop('type', "text");
				$("input[name=" + name + "6]").prop('type', "text");
				$("input[name=" + name + "7]").prop('type', "text");
			}
		}
	}
		
}