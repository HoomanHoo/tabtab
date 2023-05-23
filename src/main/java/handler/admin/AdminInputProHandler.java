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
		
		AdminDataBean dto = new AdminDataBean();
		dto.setPassword (request.getParameter("password") );
		dto.setName (request.getParameter("name") );
		dto.setEmail(request.getParameter("email") );
		dto.setMem_desc_code(request.getParameter("mem_desc_code") );
		dto.setSupplier_name (request.getParameter("supplier_name") );
		//dto.setSupplier_code(request.getParameter("supplier_code") );
		
		dto.setR_date(new Timestamp(System.currentTimeMillis() ) );
	
		int result = adminDao.insertMember(dto);
		
		request.setAttribute("result", result);//" 리설트"의 값은 리설트이다>>jsp에서 리설트 달라 하니까 담아만 둠
		
		return new ModelAndView("admin/inputPro");
	}

}
/*
  
  
  
  String email1 = request.getParameter("email1");
 
		String email2 = request.getParameter("email2");
		String email = null;
		if( ! email1.equals("") ) {
			if(email2.equals("0") ) {
				//직접입력
				email = email1;
			}else {
				//선택입력
				email = email1 + "@" +email2;
			}
		}*/