package handler.question;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import question.QuestionDataBean;
import handler.CommandHandler;
import question.QuestionDao;
@Controller 
public class QuestionModifyProHandler implements CommandHandler{
    @Resource(name="questionDao")
    private QuestionDao questionDao;
	@RequestMapping("/questionmodifypro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
		request.setCharacterEncoding( "utf-8" );
	    
	    QuestionDataBean dto= new QuestionDataBean();
	    dto.setCon_num( Integer.parseInt( request.getParameter("con_num")));
	    dto.setCon_subject( request.getParameter("con_subject"));
	    dto.setContent( request.getParameter("content"));
	    dto.setMem_code( Integer.parseInt( request.getParameter("mem_code")));

	    String pageNum= request.getParameter( "pageNum" );
 
 	    int result= questionDao.modifyArticle( dto );
	    
	    request.setAttribute("result", result);
	    request.setAttribute("pageNum", pageNum);
	    
		return new ModelAndView("question/questionmodifyPro");
	}
}
