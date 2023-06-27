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
@Controller
public class QuestionDeleteProHandler implements CommandHandler{
    @Resource(name="questionDao")
	private QuestionDao questionDao;

	@RequestMapping("/questiondeletepro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		HttpSession	session	= request.getSession();

	    if(   session == null
	 	       || session.getAttribute("mem_code") == null) {
	    	// 로그인이 안된 상태
	    	return new ModelAndView("user/loginForm");
	    }

		int		con_num	= Integer.parseInt( request.getParameter( "con_num" ) );
	    String	pageNum	= request.getParameter( "pageNum" );

	    int		result	= questionDao.deleteArticle(con_num);
    	
	    request.setAttribute("result", result);
	    request.setAttribute("pageNum", pageNum);

		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> result : " + result);
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> con_num : " + con_num);
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> pageNum : " + pageNum);

		return new ModelAndView("question/questiondeletePro");
	}
}
