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
    
    public int getMem_desc_code() {
    	return session.selectOne("Question.getMem_desc_code");
    }
    
    public int insertArticle( QuestionDataBean dto ) {
	
		int con_num		= dto.getCon_num();		//제목글 0 / 답변글 !0
		int contentGroup 		= dto.getContent_group();			//그룹화아이디
		int contentProcedure	= dto.getContent_procedure();		//그룹 내 글순서
		int contentLevel	= dto.getContent_level();	//그룹 내 글레벨(들여쓰기 순서)
			
		String	sql	= null;
		
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> con_num : " + con_num);
		
		if( con_num == 0 ) {
			//제목글인 경우
			if( getCount() != 0 ) {						    			    
			    contentGroup = ( (Integer)session.selectOne("Question.maxNum") ) + 1;
		    } else {
		    	 //글이 없는 경우
		         contentGroup = 1;
		    }

			contentProcedure = 0;
		    contentLevel = 0;
		} else {
			//답변글인 경우					
			session.update("Question.insertReply", dto );

			contentProcedure ++;  // 답글을 내리겠다
		    contentLevel ++; // 답글을 내리겠다
		}

		dto.setContent_group(contentGroup);
		dto.setContent_procedure(contentProcedure);
		dto.setContent_level(contentLevel);

		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> contentGroup : " + contentGroup);
	    System.out.println(Thread.currentThread().getStackTrace()[1] + ">> contentProcedure : " + contentProcedure);
	    System.out.println(Thread.currentThread().getStackTrace()[1] + ">> contentLevel : " + contentLevel);

		return session.insert( "Question.insertArticle", dto );
    }
    

	public List<QuestionDataBean> getArticles( Map<String, Integer>map ){		
		return session.selectList("Question.getArticles", map);	
	}


	public QuestionDataBean getArticle( int con_num ) {   				
		return session.selectOne("Question.getArticle", con_num );
	}

	public int deleteArticle( int con_num ) {
		QuestionDataBean	dto	= getArticle( con_num );
		
		int contentGroup	 = dto.getContent_group();
		int contentProcedure = dto.getContent_procedure();
		int ContentLevel	 = dto.getContent_level();
		
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> contentGroup : " + contentGroup);
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> contentProcedure : " + contentProcedure);
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> ContentLevel : " + ContentLevel);
		
		int	replyCount	= session.selectOne("Question.reply", dto );
						
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> replyCount : " + replyCount);

		int result= 0;
		
		if( replyCount != 0  ) {
		    //답글이 있다 //답글 삭제 못함	
			result = -1;
		} else  {
			//답글이 없다  //답글 삭제
		
			session.update("Question.deleteReply", dto);											
			result	= session.update("Question.deleteArticle", con_num);     //결과 0 아니면 1
		}
		return result;
	}
	
	
	public int modifyArticle( QuestionDataBean dto ) {	
	    return session.update("Question.modifyArticle", dto );  
	}

}//class
