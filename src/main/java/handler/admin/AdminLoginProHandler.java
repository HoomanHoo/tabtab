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
		
		javax.servlet.http.HttpSession session =  request.getSession();//세션 만듬
		
		String email = request.getParameter("email");//입력받은>요청받은걸 가져오겠다???
		String password = request.getParameter("password");
		
		
		
		//session에 넣은거
		int mem_code = adminDao.checkMC(email);
		
		
		int result = adminDao.check(email, password);
		
		session.setAttribute("email", email);
		session.setAttribute("mem_code", mem_code);
		
		request.setAttribute("result", result);
		request.setAttribute( "email", email);
		
		return new ModelAndView("admin/loginPro");
	}
	

	
}


/*@SessionAttributes
 * HttpSession session1 = request.getSession(true);
 

@GetMapping("/test1")//이거 안써도 되나?

public String test1(HttpSession session) {

session.setAttribute("data1","문자열1");
//세션에 data1이라는 이름, 문자열1이라는 내용을 집어넣어라
return "test1";
}
@GetMapping("/result1")
public String result1(HttpSession session) {

String data1 = (String)session.getAttribute("data1");
System.out.println("data1"+data1);
return "result1";
}
*/