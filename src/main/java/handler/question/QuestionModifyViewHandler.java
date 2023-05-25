package handler.question;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import question.QuestionDao;
import question.QuestionDataBean;
@Controller
public class QuestionModifyViewHandler implements CommandHandler {

	@Resource(name="questionDao")
	private QuestionDao questionDao;
	@RequestMapping("/questionmodifyview")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int con_num= Integer.parseInt( request.getParameter( "con_num" ));
	    String pageNum= request.getParameter( "pageNum" );
	    int mem_code= Integer.parseInt( request.getParameter( "mem_code" ));  
   
	    int result= questionDao.check( con_num, mem_code ); 
	    
	    request.setAttribute("result", result);
	    request.setAttribute("pageNum", pageNum);
	    request.setAttribute("con_num", con_num);
	    
	    if( result == 1 ) {

	        QuestionDataBean dto= questionDao.getArticle( con_num );
	        request.setAttribute("dto", dto);
	    }
		return new ModelAndView("question/questionmodifyView");
	}
}
