$(document).ready(
		function(){
			$("input[name=name]").on("click", function(){
				var tval = this.value;
				var tval1 = tval + "1";
				var hval = document.getElementById(tval).value; 
				console.log(tval);
				console.log(hval);
				if(document.querySelector("#" + $.escapeSelector(tval1)) != null){
					alert("이미 추가된 의약품입니다");
				}
				else{
					$("#orderList").append(
							"<input type='text' id='" + this.value + "1' name='mediName' value='" + this.value + "' readonly>"
							+ "<input type='number' id='" + this.value + "2' name='orderQuan' value='1' min='1'>"
							+ "<input type='text' id='" + this.value + "3' name='supplyPrice' value='" + hval + "' readonly>"
							+ "<input type='button' id='" + this.value + "4' name='deleteButton' value='삭제' >"
							+ "<br id='" + this.value +"5'>");
				}
				
				
				$("input[name=orderQuan]").on("input", function(){
					var tid = tval
					var tid1 = tid + "1";
					var tid2 = tid + "2";
					var tid3 = tid + "3";
					var tid4 = tid + "4";
					var tid5 = tid + "5";
					console.log(tid);
					document.getElementById(tid3).value = document.getElementById(tval).value * document.getElementById(tid2).value;
					
					
				});
				
				$("input[name=orderQuan]").on("change", function(){
					var tid = tval;
					var tid1 = tid + '1';
					var tid2 = tid + "2";
					var tid3 = tid + "3";
					var tid4 = tid + "4";
					var tid5 = tid + "5";
					console.log(tid);
					document.getElementById(tid3).value = document.getElementById(tval).value * document.getElementById(tid2).value;
					
				});
				
				$("input[name=deleteButton]").on("click", function(){
					var tStr = this.id;
					var sLength = tStr.length;
					var tid = tStr.substr(0, (sLength - 1));
					var tid1 = tid + '1';
					var tid2 = tid + "2";
					var tid3 = tid + "3";
					var tid4 = tid + "4";
					var tid5 = tid + "5";
					$("#" + $.escapeSelector(tid1)).remove();
					$("#" + $.escapeSelector(tid2)).remove();
					$("#" + $.escapeSelector(tid3)).remove();
					$("#" + $.escapeSelector(tid4)).remove();
					$("#" + $.escapeSelector(tid5)).remove();
				});
				
			});
		});
		
function checkOrderList(){
	if(!document.querySelector("input[name=mediName]")){
		alert(selectmedi);
		return false;
	}
}