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
@Controller
public class OrderCheckDetailHandler implements CommandHandler{
	
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/ordercheckdetail")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//checkId 필요
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("user/loginForm");
		}
		else {
			String oNum = request.getParameter("onum");
		//	String dNum = request.getParameter("dnum"); d_code 상태가 미배송인 경우 order delete 하고자 했음
			int o_num = Integer.parseInt(oNum);
			
			DetailOrderHistoryDataBean dto = new DetailOrderHistoryDataBean();
			dto.setO_num(o_num);
			List<DetailOrderHistoryDataBean> dtos = orderDao.getDetailOrderHistory(o_num);
			
			request.setAttribute("dtos", dtos);
			
			return new ModelAndView("order/orderCheckDetail");
		}
	}

}
