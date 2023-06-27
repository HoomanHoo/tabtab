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
public class QuestionContentHandler implements CommandHandler {

	@Resource(name="questionDao")
	private QuestionDao questionDao;
	
	@RequestMapping("/questioncontent")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
				
		HttpSession	session	= request.getSession();

	    if(   session == null
	       || session.getAttribute("mem_code") == null) {
	    	// 로그인이 안된 상태
	    	return new ModelAndView("user/loginForm");
	    }
	    
	    String mem_desc_code = (String) session.getAttribute("mem_desc_code");
	    
		int		con_num	= Integer.parseInt( request.getParameter( "con_num" ) );
	    String	pageNum	= request.getParameter( "pageNum" );
	    int		number	= Integer.parseInt( request.getParameter( "number" ) );
		    
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> pageNum : " + pageNum);
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> con_num : " + con_num);
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> number  : " + number);

		QuestionDataBean dto	= questionDao.getArticle( con_num );
		
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> con_num : " + dto.getCon_num());
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> name    : " + dto.getName());
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> mem_desc_code  : " + dto.getMem_desc_code());

	    request.setAttribute("number",  number);
	    request.setAttribute("pageNum", pageNum);
	    request.setAttribute("dto",     dto);
	    request.setAttribute("mem_desc_code", mem_desc_code);
	    
		return new ModelAndView("question/questioncontent");
	}
}
