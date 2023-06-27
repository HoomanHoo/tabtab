package handler.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.AdminDao;
import handler.CommandHandler;

@Controller
public class AdminConfirmEmailHandler implements CommandHandler{

	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@RequestMapping("/adminconfirmemail")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		String email = request.getParameter("email");		
	
		int result = adminDao.checkEmail(email);
		
		request.setAttribute( "result", result );
		request.setAttribute( "email", email);
		
		return new ModelAndView("admin/confirmEmail");
	}

}
