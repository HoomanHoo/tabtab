$(function(){
			$("input[name=dwQuan").on("change",function(){
				let tid = this.id;
				let supplyValues = document.querySelector("#" + CSS.escape(tid) + "6").value;
				let orderQuan = document.querySelector("#" + CSS.escape(tid) + "5").value;
				let dwQuan = this.value;
				let eachSupplyValue = supplyValues / orderQuan;
				let dwSupplyValue = dwQuan * eachSupplyValue;
				
				
				$("#" + $.escapeSelector(tid) + "2").val(dwSupplyValue);
			}
			
			
			
			
			
			
			
			)
		});
		