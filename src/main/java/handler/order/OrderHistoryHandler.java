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
import order.OrderHistoryDataBean;
@Controller
public class OrderHistoryHandler implements CommandHandler{
	
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/orderhistory")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//checkId 구현해야함
		
		int mem_code = 1;
		
		List<OrderHistoryDataBean> dtos = orderDao.getOrderHistory(mem_code); 
		
		request.setAttribute("dtos", dtos);
		
		return new ModelAndView("order/orderHistory");
	}

}
