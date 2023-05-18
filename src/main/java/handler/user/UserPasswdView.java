package handler.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import misc.SendMail;
import user.ULogonDao;

@Controller
public class UserPasswdView implements CommandHandler{
	
	@Resource(name="uLogonDao")
	public ULogonDao uLogonDao;
	@Resource(name="sendMail")
	public SendMail sendMail;
	
	@RequestMapping("/userpasswdview")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		System.out.println(name);
		System.out.println(email);
		String result = uLogonDao.findPasswd(name, email);
		
		if(result == null) {
			request.setAttribute("result", "등록된 이름, 이메일이 아닙니다");
		}
		else {
			request.setAttribute("result", result);
			sendMail.sendMail(email, result);
		}
		
		System.out.println(result);
		
		
		return new ModelAndView("user/userPasswdView");
	}

}
