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
	    int mem_code= Integer.parseInt( request.getParameter( "mem_code"));
	    int mem_desc_code= Integer.parseInt(request.getParameter( "mem_desc_code" ));
	    
	    int resultCheck= questionDao.check( con_num, mem_code );
	    
	    request.setAttribute("resultCheck", resultCheck);
	    request.setAttribute("pageNum",pageNum);
	    request.setAttribute("mem_desc_code", mem_desc_code);
	    
	    if( resultCheck== 1 ) {
	    	int result= questionDao.deleteArticle(con_num);
	    	request.setAttribute("result", result);
	    } 
		
		return new ModelAndView("question/questiondeletePro");
	}
}
