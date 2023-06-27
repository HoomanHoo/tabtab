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
public class UserDeleteProHandler implements CommandHandler{

	@Resource(name="uLogonDao")
	private ULogonDao uLogonDao;
	
	@RequestMapping("/userdeletepro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		
		javax.servlet.http.HttpSession session =  request.getSession();
		String email = (String)session.getAttribute("email");
		int mem_code = (Integer)session.getAttribute("mem_code");
		
		int result = uLogonDao.deleteT(mem_code);
		
		session.removeAttribute("email");
		session.removeAttribute("mem_code");
		
		request.setAttribute("result", result);
		return new ModelAndView("user/deletePro");
	}

}
