
var subjecterror= "제목을 입력하세요";
var contenterror= "내용을 입력하세요";
var mem_codeerror= "본인이 작성한 글만 변경할 수 있습니다";

var inserterror= "글작성에 실패했습니다\n잠시 후 다시 시도하세요";  
var modifyerror= "글수정에 실패했습니다\n잠시 후 다시 시도하세요";
var deleteerror= "글삭제에 실패했습니다\n잠시 후 다시 시도하세요";

//var passerror= "입력하신 비밀번호가 다릅니다\n다시 확인하세요";
var replyerror= "댓글이 있는 글은 삭제할 수 없습니다";

function erroralert( msg ){
	alert( msg );
	history.back();
}

//글수정
function modifycheck(){
	if( ! modifyform.con_subject.value ){
		alert( subjecterror );
		modifyform.con_subject.focus();
		return false;
	} else if( ! modifyform.content.value ){
		alert( contenterror );
		modifyform.content.focus();
		return false;
	} else if( ! modifyform.mem_code.value ){
		alert( mem_codeerror );
		modifyform.mem_code.focus();
		return false;
	}
}

//글삭제
	function deleteContent() {
		if(confirm("정말 삭제하시겠습니까?") == true) {
			return true;
		} else {
			return false;
		}
	}
//글쓰기
function writecheck(){
    if( ! writeform.con_subject.value ){
		alert( subjecterror );
		writeform.con_subject.focus();
		return false;
	} else if( ! writeform.content.value ){
		alert( contenterror );
		writeform.content.focus();
		return false;
	} else if( !writeform.mem_code.value ){
		alert( mem_codeerror );
		writeform.mem_code.focus();
		return false;
	}
}


//글쓰기
/*
function writecheck(){
	if( !writeform.writer.value ){
		alert( writererror );
		writeform.writer.focus();
		return false;
	} else if( ! writeform.subject.value ){
		alert( subjecterror );
		writeform.subject.focus();
		return false;
	} else if( ! writeform.content.value ){
		alert( contenterror );
		writeform.content.focus();
		return false;
	} else if( !writeform.passwd.value ){
		alert( passwderror );
		writeform.passwd.focus();
		return false;
	}
}
*/