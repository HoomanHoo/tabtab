package handler.order;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import order.OrderCheckDataBean;
import order.OrderDao;
@Controller
public class OrderCheckHandler implements CommandHandler{

	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/ordercheck")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//checkId 필요
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("user/loginForm");
		}
		else {
			int mem_code = (int) session.getAttribute("mem_code");
			LocalDateTime now = LocalDateTime.now();
			Timestamp date = Timestamp.valueOf(now); 
			
			OrderCheckDataBean dto = new OrderCheckDataBean();
			dto.setMem_code(mem_code);
			dto.setO_date(date);
			List<OrderCheckDataBean> dtos = orderDao.getTodayOrder(dto);
			
			request.setAttribute("dtos", dtos);
			
			return new ModelAndView("/order/orderCheck");
		}
	}

}
