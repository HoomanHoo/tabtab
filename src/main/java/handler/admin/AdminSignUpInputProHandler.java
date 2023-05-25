package handler.admin;

import java.sql.Timestamp;

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
public class AdminSignUpInputProHandler implements CommandHandler{

	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@RequestMapping("/adminsignupinputpro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		AdminDataBean dto = new AdminDataBean();
		dto.setApply_desc_code (request.getParameter("apply_desc_code") );
		dto.setName (request.getParameter("auname") );
		dto.setP_name(request.getParameter("p_name") );
		dto.setMem_desc_code(request.getParameter("mem_desc_code") );
		dto.setP_address (request.getParameter("p_address") );
		dto.setPr_num(request.getParameter("pr_num") );
		dto.setMem_code(Integer.parseInt( request.getParameter("mem_code") ));
		
		int result = adminDao.updateMember(dto);
		
		request.setAttribute("result", result);//" 리설트"의 값은 리설트이다>>jsp에서 리설트 달라 하니까 담아만 둠
		
		return new ModelAndView("admin/signUpInputPro");
	}
}
