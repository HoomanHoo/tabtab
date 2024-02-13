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
public class AdminLoginProHandler implements CommandHandler{

	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@RequestMapping("/adminloginpro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		javax.servlet.http.HttpSession session =  request.getSession();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		
		
		AdminDataBean dto = adminDao.checkMC(email);
		
		String mem_code = Integer.toString(dto.getMem_code());
		String mem_desc_code = dto.getMem_desc_code();
		
		int result = adminDao.check(email, password);
		
		session.setAttribute("mem_code", mem_code);
		session.setAttribute("mem_desc_code", mem_desc_code);
		
		request.setAttribute("result", result);
		request.setAttribute( "email", email);
		
		return new ModelAndView("admin/loginPro");
	}
	

	
}


/*@SessionAttributes
 * HttpSession session1 = request.getSession(true);
 

@GetMapping("/test1")//�̰� �Ƚᵵ �ǳ�?

public String test1(HttpSession session) {

session.setAttribute("data1","���ڿ�1");
//���ǿ� data1�̶�� �̸�, ���ڿ�1�̶�� ������ ����־��
return "test1";
}
@GetMapping("/result1")
public String result1(HttpSession session) {

String data1 = (String)session.getAttribute("data1");
System.out.println("data1"+data1);
return "result1";
}
*/