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
public class UserComfirmEmailHandler implements CommandHandler{

	@Resource(name="uLogonDao")
	private ULogonDao uLogonDao;
	
	@RequestMapping("/userconfirmemail")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String email = request.getParameter("email");		
		int result = uLogonDao.ucheckEmail(email);
		
		request.setAttribute( "result", result );
		request.setAttribute( "email", email);
		
		return new ModelAndView("user/confirmEmail");
	}

}
