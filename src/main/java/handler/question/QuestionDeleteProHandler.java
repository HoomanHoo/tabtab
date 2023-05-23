package handler.question;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import question.QuestionDao;
@Controller
public class QuestionDeleteProHandler implements CommandHandler{
    @Resource(name="questionDao")
	private QuestionDao questionDao;
    
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		int con_num= Integer.parseInt( request.getParameter( "con_num" ) );
	    String pageNum= request.getParameter( "pageNum" );
	    String passwd= request.getParameter( "passwd" );
	
	    int resultCheck= questionDao.check( con_num, passwd );
	    
	    request.setAttribute("resultCheck", resultCheck);
	    request.setAttribute("pageNum",pageNum);
	    
	    if( resultCheck== 1 ) {
	    	int result= questionDao.deleteArticle(con_num);
	    	request.setAttribute("result", result);
	    } 
		
		return new ModelAndView("question/questiondeletePro");
	}
}
