package handler.admin;

import java.sql.Timestamp;

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
import order.OrderDao;

@Controller
public class AdminSignUpDHandler implements CommandHandler{

	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/adminsignupd")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("admin/loginForm");
		}
		else {
			int mem_code = Integer.parseInt(request.getParameter("mem_code") );
			String pageNum = request.getParameter("pageNum");
			
			AdminDataBean dto = adminDao.selectMember(mem_code);	//getArticle메서드니까?>글하나만 가져오면 됨>보드 디비빈
		//	System.out.println(mem_code);	
			
			request.setAttribute("mem_code", mem_code);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("dto", dto);
			
			
			
			return new ModelAndView("admin/signUpD");
		}
	}

}
