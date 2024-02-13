package handler.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import order.OrderDao;
import user.ULogonDao;
import user.ULogonDataBean;

@Controller
public class UserMyPageModiPro implements CommandHandler{

	@Resource(name="uLogonDao")
	private ULogonDao uLogonDao;
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/usermypagemodipro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("user/loginForm");
		}
		else {
		
			ULogonDataBean dto = new ULogonDataBean();
			dto.setPassword (request.getParameter("password") );
			dto.setP_address (request.getParameter("p_address") );
			dto.setMem_code(Integer.parseInt((String)session.getAttribute("mem_code")));
		
			int result = uLogonDao.updateMy(dto);
			
			request.setAttribute("result", result);
			
			return new ModelAndView("user/myPageModiPro");
		}
	}

}
