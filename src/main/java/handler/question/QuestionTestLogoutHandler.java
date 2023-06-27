package handler.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;

@Controller
public class QuestionTestLogoutHandler implements CommandHandler{
    
	@RequestMapping("/questiontestlogout")
	@Override
    public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession	session	= request.getSession();

	    if(   session == null
	       || session.getAttribute("mem_code") == null) {
	    	// 로그인이 안된 상태
	    	return new ModelAndView("user/loginForm");
	    }
	    
	    session.removeAttribute("mem_code");
	    
        return new ModelAndView("user/loginForm");
    }
}
