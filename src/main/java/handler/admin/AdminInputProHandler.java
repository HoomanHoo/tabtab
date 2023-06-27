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
public class AdminInputProHandler implements CommandHandler{

	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@RequestMapping("/admininputpro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String memDescCode = "4";
		
		AdminDataBean dto = new AdminDataBean();
		dto.setName (request.getParameter("name") );
		dto.setEmail(request.getParameter("email") );
		dto.setPassword (request.getParameter("password") );
		dto.setSupplier_name (request.getParameter("supplier_name") );
		dto.setR_date(new Timestamp(System.currentTimeMillis() ) );
		dto.setMem_desc_code(memDescCode);
		int result = adminDao.insertMember(dto);
		
		request.setAttribute("result", result);//" 리설트"의 값은 리설트이다>>jsp에서 리설트 달라 하니까 담아만 둠
		
		return new ModelAndView("admin/inputPro");
	}

}