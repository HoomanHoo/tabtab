package handler.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.AdminDataBean;
import handler.CommandHandler;
import user.ULogonDao;
import user.ULogonDataBean;

@Controller
public class UserMyPageHandler implements CommandHandler{

	@Resource(name="uLogonDao")
	private ULogonDao uLogonDao;
	
	@RequestMapping("/usermypage")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		request.setCharacterEncoding("utf-8");
		
		javax.servlet.http.HttpSession session =  request.getSession();
		String email = (String)session.getAttribute("email");
		int mem_code = (Integer)session.getAttribute("mem_code");
		
		//ULogonDataBean dto = new ULogonDataBean();
		//String result = uLogonDao.selectMy(dto);
		ULogonDataBean dto = uLogonDao.selectMy(mem_code);
		System.out.println(dto);
		
		request.setAttribute("dto", dto);
		
		return new ModelAndView("user/myPage");
	}

}
//email/password/p_address �����;� ��>mem_code�ʿ� ���ǿ� �´� mem_code
/*
 ����email(mememail)�� �´� mem_code�� ����?
 �ƴϸ� ���ǿ� �̸�:mem_code Ű:${dto.mem_code}�� ���� �� �� �ֳ�????
 ������ �����ϴٸ� ���ǿ� ����� mem_code�� ���ͼ� �� #{mem_code}�� ���� ���� ������ ����Ʈ �ؿü� ���� �ʳ�?
*/