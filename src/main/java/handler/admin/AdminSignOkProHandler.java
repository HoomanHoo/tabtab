package handler.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.AdminDao;
import admin.AdminDataBean;
import handler.CommandHandler;
import misc.SendMail;
import order.OrderDao;

@Controller
public class AdminSignOkProHandler implements CommandHandler{

	@Resource(name="adminDao")
	public AdminDao adminDao;
	@Resource(name="sendMail")
	public SendMail sendMail;
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("adminsignokpro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("admin/loginForm");
		}
		else {
			int mem_code = Integer.parseInt(request.getParameter("mem_code") );
			String email = request.getParameter("email");
			
			AdminDataBean dto = adminDao.selectMember(mem_code);
				
				
			String result = adminDao.sendPasswd(email);
		
			
			request.setAttribute("dto", dto);
			request.setAttribute("result", result);
			sendMail.sendMail(email, result);
			
			
			//System.out.println(result);
			
			return new ModelAndView("admin/signOkPro");
		}
	}

}
