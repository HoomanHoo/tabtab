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
import misc.CheckMember;
import misc.SendMail;
import order.OrderDao;

@Controller
public class AdminSignUpInputProHandler implements CommandHandler{

	@Resource(name="sendMail")
	private SendMail sendMail;
	
	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@Resource(name="orderDao")
	private OrderDao orderDao;
	
	@Resource(name="checkAdmin")
	private CheckMember checkMember;
	
	@RequestMapping("/adminsignupinputpro")
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
			String email = request.getParameter("email");
			
			//용도 파악 후 주석처리 유지할지 기능 살릴지 결정
			//AdminDataBean dto = adminDao.selectMember(mem_code);
			
			//유저 회원가입 신청 승인
			AdminDataBean dtos = new AdminDataBean();
			dtos.setApply_desc_code (request.getParameter("apply_desc_code") );
			dtos.setName (request.getParameter("auname") );
			dtos.setP_name(request.getParameter("p_name") );
			dtos.setMem_desc_code(request.getParameter("mem_desc_code") );
			dtos.setP_address (request.getParameter("p_address") );
			dtos.setPr_num(request.getParameter("pr_num") );
			dtos.setMem_code(Integer.parseInt( request.getParameter("mem_code") ));
			dtos.setEmail(request.getParameter("email") );
			
			int resultCheck = adminDao.insertUser(dtos);
			
			
			//비밀번호 찾기 + 찾은 비밀번호 이메일로 발송
			String result = adminDao.sendPasswd(email);
			
			if(result == null) {
				request.setAttribute("result", "메일이 보내지지 않았습니다.");
			}else {
				request.setAttribute("result", result);
				sendMail.sendMail(email, result);
			}
			
			//
			request.setAttribute("resultCheck", resultCheck);//" 리설트"의 값은 리설트이다>>jsp에서 리설트 달라 하니까 담아만 둠
			
			return new ModelAndView("admin/signUpInputPro");
		}
	}
}
