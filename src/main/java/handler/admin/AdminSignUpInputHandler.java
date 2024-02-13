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
import misc.CheckMember;
import order.OrderDao;

@Controller
public class AdminSignUpInputHandler implements CommandHandler{

	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@Resource(name="orderDao")
	private OrderDao orderDao; 
	
	@Resource(name="checkAdmin")
	private CheckMember checkMember;
	
	@RequestMapping("/adminsignupinput")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String memberResult = checkMember.checkMemberInfo(session);
		
		if(!memberResult.equals("admin")) {
			return new ModelAndView("admin/loginForm");
		}
		else {
			int mem_code = Integer.parseInt(request.getParameter("mem_code") );
			String pageNum = request.getParameter("pageNum");
			
			AdminDataBean dto = adminDao.selectMember(mem_code);	//getArticle메서드니까?>글하나만 가져오면 됨>보드 디비빈
				
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("dto", dto);
			
			return new ModelAndView("admin/signUpInput");
		}
	}

}
