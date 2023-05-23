package handler.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import user.ULogonDao;

@Controller
public class UserLoginProHandler implements CommandHandler{

	@Resource(name="uLogonDao")
	public ULogonDao uLogonDao;
	
	@RequestMapping("/userloginpro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		int result = uLogonDao.ucheck(email, password);
		
		request.setAttribute("result", result);
		request.setAttribute( "email", email);
		
		return new ModelAndView("user/loginPro");
	}

}
