package handler.order;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import order.DetailOrderHistoryDataBean;
import order.OrderDao;
import order.SimpleInvenDataBean;
import warehousing.OrderRequestDetailAndWarehousingDataBean;
import warehousing.WarehousingDao;
@Controller
public class OrderHistoryDetailHanlder implements CommandHandler{

	@Resource(name="warehousingDao")
	WarehousingDao warehousingDao;
	
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/orderhistorydetail")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//checkId 구현해야함
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("user/loginForm");
		}
		else {
			int mem_code = Integer.parseInt((String)session.getAttribute("mem_code"));
			int o_num = Integer.parseInt(request.getParameter("onum"));
			String deliState = request.getParameter("delistate");
			int d_code = Integer.parseInt(deliState);
			
			
			
			List<SimpleInvenDataBean> invenDtos = orderDao.getSimpleInven(mem_code);
			
			request.setAttribute("invenDtos", invenDtos);
			request.setAttribute("oNum", o_num);
			request.setAttribute("d_code", d_code);
			
			if(d_code == 10) {
				List<DetailOrderHistoryDataBean> dtos = orderDao.getDetailOrderHistory(o_num);
				request.setAttribute("dtos", dtos);
			}
			else {
				List<OrderRequestDetailAndWarehousingDataBean> dtos 
					= warehousingDao.getOrderRequestAndWarehousingDetail(o_num);
				request.setAttribute("dtos", dtos);
				
			}
			
	
			return new ModelAndView("order/orderHistoryDetail");
		}
	}

}
