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
public class QuestionContentHandler implements CommandHandler {

	@Resource(name="questionDao")
	private QuestionDao questionDao;
	
	@RequestMapping("/questioncontent")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int con_num= Integer.parseInt( request.getParameter( "con_num" ) );
	    String pageNum= request.getParameter( "pageNum" );
	    int number= Integer.parseInt( request.getParameter( "number" ) );
		    
	    QuestionDataBean dto= questionDao.getArticle( con_num );
	    
	    
	    request.setAttribute("number", number);
	    request.setAttribute("pageNum", pageNum);
	    request.setAttribute("dto", dto);
	    
		return new ModelAndView("question/questioncontent");
	}
}
