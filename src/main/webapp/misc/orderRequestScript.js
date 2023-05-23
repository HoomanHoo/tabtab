$(document).ready(
	function(){
		$("input[name=btn]").on("click", function(){
			let oNum = this.id;
	window.location.href = "detailrequest.net?onum=" + oNum;
		});
	}
);

