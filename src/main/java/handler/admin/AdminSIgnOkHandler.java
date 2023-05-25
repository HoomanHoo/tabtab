package handler.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.AdminDao;
import admin.AdminDataBean;
import handler.CommandHandler;

@Controller
public class AdminSIgnOkHandler implements CommandHandler{

	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@RequestMapping("/adminsignok")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String pageNum = request.getParameter("pageNum");
	
		request.setAttribute("pageNum", pageNum);
		
		return new ModelAndView("admin/signOk");
	}

}
