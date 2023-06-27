package handler.question;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		HttpSession	session	= request.getSession();

	    if(   session == null
	 	       || session.getAttribute("mem_code") == null) {
	    	// 로그인이 안된 상태
	    	return new ModelAndView("user/loginform");
	    }

	    String mem_desc_code = (String) session.getAttribute("mem_desc_code");
	    
		int		con_num	= Integer.parseInt(request.getParameter("con_num"));
	    String	pageNum	= request.getParameter( "pageNum" );
		
		QuestionDataBean	dto	= questionDao.getArticle(con_num);
		
		request.setAttribute("pageNum", pageNum);
	    request.setAttribute("con_num", con_num);
		request.setAttribute("dto", dto);
		request.setAttribute("mem_desc_code", mem_desc_code);
		
		
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> pageNum : " + pageNum);

		return new ModelAndView("question/questionmodifyView");
	}
}
