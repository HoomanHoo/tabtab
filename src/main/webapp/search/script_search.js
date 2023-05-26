var searcherror= "약품명 또는 주성분을 입력하세요"
//var keyworderror= "검색어를 입력하세요"
//var medi_nameerror= "검색에 실패했습니다\n약품명을 확인하세요"
//var chief_ingreerror= "검색에 실패했습니다\n주성분을 확인하세요"

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
	}
}	

//검색창에 키워드 없이 검색버튼을 클릭했을 때
/*
function keywordcheck(){
	if (!keywordform.keyword.value){
		alert( keyworderror );
		keywordform.keyword.focus();
		return false;
    }	
}	 
*/
//	else if (!searchform.keyword.value){
//		alert( keyworderror );
//		searchform.keyword.focus();
//		return false;
//	} 
//}







	








