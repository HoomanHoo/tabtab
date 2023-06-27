package handler.selling;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import inventory.InventoryDataBean;
import order.OrderDao;
import selling.SellingDao;
@Controller
public class SellPageHandler implements CommandHandler{
	
	
	@Resource(name="sellingDao")
	SellingDao sellingDao;
	
	@Resource(name="orderDao")
	OrderDao orderDao; 
	
	@RequestMapping("sellingpage")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("user/loginForm");
		}
		else {
			int mem_code = (int)session.getAttribute("mem_code");
			List<InventoryDataBean> dtos = sellingDao.getInventory(mem_code);
			
			request.setAttribute("dtos", dtos);
			
			return new ModelAndView("selling/sellingPage");
		}
	}

}

