package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class DefaultHandler implements CommandHandler{
	@RequestMapping("*")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("result", "유효한 URL이 아닙니다");
		
		return new ModelAndView("member/default");
	}

}
