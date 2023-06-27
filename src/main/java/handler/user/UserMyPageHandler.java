package handler.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.AdminDataBean;
import handler.CommandHandler;
import order.OrderDao;
import user.ULogonDao;
import user.ULogonDataBean;

@Controller
public class UserMyPageHandler implements CommandHandler{

	@Resource(name="uLogonDao")
	private ULogonDao uLogonDao;
	@Resource(name="orderDao")
	OrderDao orderDao;
	@RequestMapping("/usermypage")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("user/loginForm");
		}
		else {
			int mem_code = (int)session.getAttribute("mem_code");
			//ULogonDataBean dto = new ULogonDataBean();
			//String result = uLogonDao.selectMy(dto);
			ULogonDataBean dto = uLogonDao.selectMy(mem_code);
			
			
			request.setAttribute("dto", dto);
			
			return new ModelAndView("user/myPage");
		}
	}

}
//email/password/p_address 가져와야 함>mem_code필요 세션에 맞는 mem_code
/*
 세션email(mememail)에 맞는 mem_code가 뭐냐?
 아니면 세션에 이름:mem_code 키:${dto.mem_code}를 저장 할 수 있나????
 저장이 가능하다면 세션에 저장된 mem_code를 빼와서 이 #{mem_code}와 같은 정보 조인해 셀렉트 해올수 있지 않나?
*/