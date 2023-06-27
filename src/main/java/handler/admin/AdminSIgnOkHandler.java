package handler.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.AdminDao;
import handler.CommandHandler;
import order.OrderDao;

@Controller
public class AdminSignOkHandler implements CommandHandler{

	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@Resource(name="orderDao")
	OrderDao orderDao; 
	
	@RequestMapping("/adminsignok")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("admin/loginForm");
		}
		else {
			return new ModelAndView("admin/signOk");
		}
	}

}
