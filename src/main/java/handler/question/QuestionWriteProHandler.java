package handler.question;

import java.sql.Timestamp;

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
public class QuestionWriteProHandler implements CommandHandler{
    
	@Resource(name="questionDao")
	private QuestionDao questionDao;
	
	@RequestMapping("/questionwritepro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
    
        request.setCharacterEncoding( "utf-8" );
		
		QuestionDataBean dto= new QuestionDataBean();
		dto.setP_name( request.getParameter("p_name"));
		dto.setCon_subject( request.getParameter("con_subject"));
		dto.setContent( request.getParameter("content"));
		dto.setPasswd( request.getParameter("passwd"));
		dto.setCon_num( Integer.parseInt(request.getParameter("con_num")));
		dto.setRef( Integer.parseInt(request.getParameter("ref")));
		dto.setRe_step( Integer.parseInt(request.getParameter("re_step")));
		dto.setRe_level( Integer.parseInt(request.getParameter("re_level")));		
		
	    dto.setW_date( new Timestamp( System.currentTimeMillis() ) );
	    dto.setIp( request.getRemoteAddr() );
		   
	    int result= questionDao.insertArticle( dto );
	    
	    request.setAttribute("result", result );
		
		return new ModelAndView("question/questionwritePro");
		
	}
}
