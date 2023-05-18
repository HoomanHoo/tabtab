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
import order.OrderDao;
import order.OrderDataBean;
@Controller
public class OrderPageHandler implements CommandHandler{
	
	@Resource(name="orderDao")
	public OrderDao orderDao;
	
	@RequestMapping("/selforder")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
/*		
		HttpSession session = request.getSession();
		int mem_code = (int)session.getAttribute("mem_code");
		int result = orderDao.checkId(mem_code);
		
		if(result == 0) {
			return new ModelAndView("order/testLogin");
		}
		else {*/
			List<OrderDataBean> dtos = orderDao.mediList();
			request.setAttribute("dtos", dtos);
			
			return new ModelAndView("order/orderPage");
	//	}
	}

}
