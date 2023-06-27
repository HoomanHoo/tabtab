package handler.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;

@Controller
public class UserLogoutHandler implements CommandHandler{

	@RequestMapping("/userlogout")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		javax.servlet.http.HttpSession session =  request.getSession();
		String email = (String)session.getAttribute("email");
		int mem_code = (Integer)session.getAttribute("mem_code");
		
		session.invalidate();
		
		return new ModelAndView("user/loginForm");
	}
//로그아웃 용 만들기.
}
