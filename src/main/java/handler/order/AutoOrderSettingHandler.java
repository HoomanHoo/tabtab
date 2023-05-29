package handler.order;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import order.OrderDao;
import order.OrderDataBean;
@Controller
public class AutoOrderSettingHandler implements CommandHandler{

	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/autoordersetting")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		int mem_code = 1;
		List<OrderDataBean> dtos = orderDao.getSelectableMediList(mem_code);
		
		request.setAttribute("dtos", dtos);
		
		return new ModelAndView("order/autoOrderSetting");
	}

}
