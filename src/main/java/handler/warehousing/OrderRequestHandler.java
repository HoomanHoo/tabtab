package handler.warehousing;

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
import warehousing.OrderRequestDataBean;
import warehousing.WarehousingDao;
@Controller
public class OrderRequestHandler implements CommandHandler{

	@Resource(name="warehousingDao")
	WarehousingDao warehousingDao;
	
	@Resource(name="orderDao")
	OrderDao orderDao; 
	
	@RequestMapping("/orderrequest")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("admin/loginForm");
		}
		else {
			List<OrderRequestDataBean> dtos = warehousingDao.getOrderReqList();
			
			request.setAttribute("dtos", dtos);
			
			return new ModelAndView("warehousing/orderRequest");
		}
		
	}

}
