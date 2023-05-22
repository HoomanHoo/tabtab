package handler.user;

import java.sql.Timestamp;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import user.ULogonDao;
import user.ULogonDataBean;

@Controller
public class UserSignUpProHandler implements CommandHandler{

	@Resource(name="uLogonDao")
	private ULogonDao uLogonDao;
	
	@RequestMapping("/usersignuppro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		ULogonDataBean dto = new ULogonDataBean();
		dto.setEmail(request.getParameter("email") );
		dto.setR_date(new Timestamp(System.currentTimeMillis() ) );
		dto.setPassword (request.getParameter("password") );
		dto.setApply_desc_code (request.getParameter("apply_desc_code") );
		dto.setPl_img (request.getParameter("pr_img") );
		dto.setPr_img (request.getParameter("pr_img") );
		
		
		int result = uLogonDao.uinsertMember(dto);
		
		request.setAttribute("result", result);	//" 리설트"의 값은 리설트이다>>jsp에서 리설트 달라 하니까 담아만 둠
		return new ModelAndView("user/signUpPro");
	}

}
