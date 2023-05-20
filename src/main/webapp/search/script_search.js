var searcherror= "검색종류를 선택하세요"
var keyworderror= "검색어를 입력하세요"
var medi_nameerror= "검색에 실패했습니다\n약품명을 확인하세요"
var chief_ingreerror= "검색에 실패했습니다\n주성분을 확인하세요"

function erroralert( msg ){
	alert( msg );
	history.back();
}

//검색창에 입력없이 검색버튼을 클릭했을 때
function searchcheck(){    
	if(!searchform.type.value){
		alert(searcherror);
		searchform.type.focus();
		return false;
	} else if (!searchform.type.value){
		alert( keyworderror );
		searchform.type.focus();
		return false;
	} 
}

//약품명 입력이 틀렸을 때
/*function keyword1check(){	
	if(!searchform.medi_name.value){
		alert(medi_nameerror);
		searchform.medi_name.focus();
		return false;
	} 
}

//주성분 입력이 틀렸을 때
function keyword2check(){	
	if(!searchform.chief_ingre.value){
		alert(chief_ingreerror);
		searchform.chief_ingre.focus();
		return false;
	} 
}

//검색 결과 없을 때--생각중

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