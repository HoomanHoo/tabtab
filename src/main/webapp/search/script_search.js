var searcherror= "검색종류를 선택하세요"
var keyword= "검색어를 입력하세요"


function erroralert( msg ){
	alert( msg );
	history.back();
}

//검색 키워드를 입력 안 하고 실행했을 때
function searchcheck(){
	if(!searchForm.find("option:selected").val()){
		alert(searcherror);
		searchForm.search.focus();
		return false;
	} 
}
function keywordcheck(){	
	if(!searchForm.find("input[name='keyword']").val()){
		alert(keyworderror);
		searchForm.keyword.focus();
		return false;
	} 


}

//검색 키워드 잘못 입력했을 때


//검색 결과 없을 때

/*
var searchForm = $("#searchForm");

$("#searchForm button").on("click",function(e) {
    // 화면에서 키워드가 없다면 검색을 하지 않도록 제어
	if (!searchForm.find("option:selected").val()) {
		alert("검색종류를 선택하세요");
		return false;
	}

	if (!searchForm.find("input[name='keyword']").val()) {
		alert("키워드를 입력하세요");
		return false;
	}

    // 페이지 번호를 1로 처리
	searchForm.find("input[name='pageNum']").val("1");

    // 폼 태그의 전송을 막음
	e.preventDefault();

	searchForm.submit();

});
*/