package handler.order;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import order.DetailOrderHistoryDataBean;
import order.OrderDao;
import order.SimpleInvenDataBean;
@Controller
public class OrderHistoryDetailHanlder implements CommandHandler{

	
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/orderhistorydetail")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//checkId 구현해야함
		
		int o_num = Integer.parseInt(request.getParameter("onum"));
		String deliState = request.getParameter("delistate");
		int mem_code = 1; 
		
		List<DetailOrderHistoryDataBean> dtos = orderDao.getDetailOrderHistory(o_num);
		List<SimpleInvenDataBean> invenDtos = orderDao.getSimpleInven(mem_code);
		
		request.setAttribute("dtos", dtos);
		request.setAttribute("invenDtos", invenDtos);
		request.setAttribute("oNum", o_num);
		request.setAttribute("deliState", deliState);

		return new ModelAndView("order/orderHistoryDetail");
	}

}
