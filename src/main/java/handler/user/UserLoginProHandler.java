package handler.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import user.ULogonDao;
import user.ULogonDataBean;

@Controller
public class UserLoginProHandler implements CommandHandler{

	@Resource(name="uLogonDao")
	public ULogonDao uLogonDao;
	
	@RequestMapping("/userloginpro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session =  request.getSession();//���� ����
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		int result = uLogonDao.ucheck(email, password);
		if(result == 1) {
			ULogonDataBean dto =uLogonDao.checkMC(email);
			
			
			int mem_code = dto.getMem_code();
			String mem_desc_code = dto.getMem_desc_code();
			
			session.setAttribute("mem_code", mem_code);
			session.setAttribute("mem_desc_code", mem_desc_code);
		}
		
		
		request.setAttribute("result", result);
		
		
		return new ModelAndView("user/loginPro");
	}

}
