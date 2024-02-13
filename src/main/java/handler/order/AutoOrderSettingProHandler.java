package handler.order;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import order.AutoOrderSettingDataBean;
import order.OrderDao;
@Controller
public class AutoOrderSettingProHandler implements CommandHandler{

	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/autoordersettingpro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//checkId 해야함
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("user/loginForm");
		}
		else {
			int mem_code = Integer.parseInt((String)session.getAttribute("mem_code"));
			String[] mediCode = request.getParameterValues("mediCode");
			String[] triggerQuan = request.getParameterValues("triggerQuan");
			String[] aoQuan = request.getParameterValues("aoQuan");
			int result = 0;
			
			for(int i = 0; i < mediCode.length; i++) {
				int medi_code = Integer.parseInt(mediCode[i]);
				int trigger_quan = Integer.parseInt(triggerQuan[i]);
				int ao_quan = Integer.parseInt(aoQuan[i]);
				
				AutoOrderSettingDataBean dto = new AutoOrderSettingDataBean();
				dto.setMem_code(mem_code);
				dto.setMedi_code(medi_code);
				dto.setTrigger_quan(trigger_quan);
				dto.setAo_quan(ao_quan);
				result += orderDao.insertAutoOrderSetting(dto);
			}
			
			request.setAttribute("result", result);
			
			return new ModelAndView("order/autoOrderSettingPro");
		}
	}

}
