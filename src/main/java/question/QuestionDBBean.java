package question;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import question.QuestionDataBean;
import handler.SqlMapClient;


public class QuestionDBBean implements QuestionDao {
    
private SqlSession session= SqlMapClient.getSession();
	
    public int getCount() {  			
		return session.selectOne("Question.getCount");
    }
       	
    public int getMem_code() {
    	return session.selectOne("Question.getMem_code");
    }
    
    public int insertArticle( QuestionDataBean dto ) {
	
		int con_num= dto.getCon_num();       //제목글 0 / 답변글 !0
		int ref= dto.getRef();              //그룹화아이디
		int re_step= dto.getRe_step();      //그룹 내 글순서
		int re_level= dto.getRe_level();    //그룹 내 글레벨(들여쓰기 순서)
			
		String sql= null;
		if( con_num == 0 ) {
			//제목글인 경우
			if( getCount() != 0 ) {						    			    
			    ref= ( (Integer)session.selectOne("Question.maxNum") ) + 1;
		    } else {
		    	 //글이 없는 경우
		         ref=1;
		    }
		    re_step= 0;
		    re_level=0;
		} else {
			//답변글인 경우					
			session.update("Question.insertReply", dto );
			re_step ++;  // 답글을 내리겠다
		    re_level ++; // 답글을 내리겠다
		}
				
		
		dto.setRef(ref);
		dto.setRe_step(re_step);
		dto.setRe_level(re_level);
		return session.insert( "Question.insertArticle", dto );
		
    }
    

	public List<QuestionDataBean> getArticles( Map<String, Integer>map ){		
		return session.selectList("Question.getArticles", map);	
	}


	public QuestionDataBean getArticle( int con_num ) {   				
		return session.selectOne("Question.getArticle", con_num );
	}
		
	public int check( int con_num, int mem_code ) {
    	int result = 0;
    	QuestionDataBean dto= getArticle( con_num );
    	if( mem_code==( dto.getMem_code() ) ) {
    		//회원 코드가 같다
    		result = 1;
    	} else {
    		//회원 코드가 다르다
    		result = 0;
    	}
    	return result;    	
    }
	
	public int deleteArticle( int con_num ) {
	
		QuestionDataBean dto= getArticle( con_num );
				
		int mem_desc_code= session.selectOne("Qeustion.mem_desc_code", dto );
		
		int result= 0;
		if( mem_desc_code != 2  ) {
		    //약사다 //답글 삭제 못함	
			result = -1;
		} else {
			//관리자다  //답글 삭제
		
			session.update("Question.deleteReply", dto);											
			result= session.update("Question.deleteArticle", con_num);     //결과 0 아니면 1
		}
		return result;
	}
	
	
	public int modifyArticle( QuestionDataBean dto ) {	
	    return session.update("Question.modifyArticle", dto );  
	}

}//class
