package handler.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
@Controller
public class QuestionDeleteFormHandler implements CommandHandler{
    @RequestMapping("/questiondeleteform")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
    	int con_num= Integer.parseInt( request.getParameter( "con_num" ) );
	    String pageNum= request.getParameter( "pageNum" );
	    
	    request.setAttribute("con_num", con_num);
	    request.setAttribute("pageNum", pageNum);

		return new ModelAndView("question/questiondeleteForm");
	}
}
