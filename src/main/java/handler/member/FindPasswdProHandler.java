package handler.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import member.MemberDao;
import misc.SendMail;
@Controller
public class FindPasswdProHandler implements CommandHandler{
	
	@Resource(name="memberDao")
	public MemberDao memberDao;
	@Resource(name="sendMail")
	public SendMail sendMail;
	
	@RequestMapping("/member/findpasswdpro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		System.out.println(name);
		System.out.println(email);
		String result = memberDao.findPasswd(name, email);
		
		if(result == null) {
			request.setAttribute("result", "등록된 이름, 이메일이 아닙니다");
		}
		else {
			request.setAttribute("result", result);
			sendMail.sendMail(email, result);
		}
		
		System.out.println(result);
		
		
		return new ModelAndView("member/findPasswdPro");
	}

}
