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
import warehousing.DetailOrderRequestDataBean;
import warehousing.OrderRequestDetailAndWarehousingDataBean;
import warehousing.WarehousingDao;
@Controller
public class OrderRequestDetailHandler implements CommandHandler{
	
	@Resource(name="warehousingDao")
	WarehousingDao warehousingDao;
	
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/detailrequest")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("admin/loginForm");
		}
		else {
		
			String oNum = request.getParameter("onum");
			int o_num = Integer.parseInt(oNum);
			String dCode = warehousingDao.getDeliveryCode(o_num);
			int d_code = Integer.parseInt(dCode);
			
			if(d_code == 10) {
				List<DetailOrderRequestDataBean> dtos = warehousingDao.getDetailOrderRequest(o_num);
				request.setAttribute("d_code", d_code);
				request.setAttribute("o_num", o_num);
				request.setAttribute("dtos", dtos);
			}
			else {
				List<OrderRequestDetailAndWarehousingDataBean> dtos 
					= warehousingDao.getOrderRequestAndWarehousingDetail(o_num);
				int w_num = warehousingDao.getOrderNumber(o_num);
				request.setAttribute("d_code", d_code);
				request.setAttribute("o_num", o_num);
				request.setAttribute("dtos", dtos);
				
				
			}
			return new ModelAndView("warehousing/orderRequestDetail");
		}
	}

}
