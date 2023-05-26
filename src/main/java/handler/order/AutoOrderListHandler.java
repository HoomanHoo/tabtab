package handler.order;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import order.AutoOrderListDataBean;
import order.OrderDao;
@Controller
public class AutoOrderListHandler implements CommandHandler{
	
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/autoorder")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//checkId 필요
		int mem_code = 1;
		List<AutoOrderListDataBean> dtos = orderDao.getAutoOrderList(mem_code);
		
		request.setAttribute("dtos", dtos);
		
		
		return new ModelAndView("order/autoOrderList");
	}

}
