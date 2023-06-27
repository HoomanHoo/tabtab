package handler.order;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import order.DeliStateDataBean;
import order.DetailOrderDataBean;
import order.OrderDao;
import order.OrderDataBean;

@Controller
public class OrderProHandler implements CommandHandler{
	
	@Resource(name = "orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/orderpagepro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("user/loginForm");
		}
		else {
			int mem_code = (int)session.getAttribute("mem_code");
			String[] mediNames = (String[])request.getParameterValues("mediName");
			String[] orderQuanStr = (String[])request.getParameterValues("orderQuan");
			String[] supplyPriceStr = (String[])request.getParameterValues("supplyPrice");
			int[] orderQuan = new int[orderQuanStr.length];
			int[] supplyPrice = new int[supplyPriceStr.length];
			int allSupplyValue = 0;
			int allOrderQuan = 0;
			LocalDateTime now = LocalDateTime.now();
			Timestamp date = Timestamp.valueOf(now); 
			
			
			for(int i = 0; i < orderQuanStr.length; i++) {
				supplyPrice[i] = Integer.parseInt(supplyPriceStr[i]);
				orderQuan[i] = Integer.parseInt(orderQuanStr[i]);
				
				allSupplyValue += supplyPrice[i];
				allOrderQuan += orderQuan[i];
			}
			
			int[] mediCodes = orderDao.getMediCodes(mediNames);
			
			OrderDataBean dto = new OrderDataBean();
			dto.setMem_code(mem_code);
			dto.setSupplier_code("1");
			dto.setSum_supply_value(allSupplyValue);
			dto.setSum_order_count(allOrderQuan);
			dto.setMemo(" ");
			dto.setO_date(date);
	//		o_num은 시퀀스로 자동 생성, memo 안 만들었음 o_date는 sysdate
			
			int o_num = orderDao.order(dto);
			DeliStateDataBean dsDto = new DeliStateDataBean();
			dsDto.setO_num(o_num);
			orderDao.insertDeliCode(dsDto);
			
			List<DetailOrderDataBean> detailOrders = new ArrayList<DetailOrderDataBean>();
			
			for(int i = 0; i < mediCodes.length; i++) {
				DetailOrderDataBean detailOrder = new DetailOrderDataBean();
				detailOrder.setO_num(o_num);
				detailOrder.setMedi_code(mediCodes[i]);
				detailOrder.setOrder_quan(orderQuan[i]);
				detailOrder.setSupply_values(supplyPrice[i]);
	
				detailOrders.add(detailOrder);
			}
			int result = orderDao.detailOrder(detailOrders);
			
			request.setAttribute("result", result);
			
			return new ModelAndView("order/orderPro");
		}
	}

}
