package handler.warehousing;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import warehousing.OrderRequestDataBean;
import warehousing.WarehousingDao;
@Controller
public class OrderRequestHandler implements CommandHandler{

	@Resource(name="warehousingDao")
	WarehousingDao warehousingDao;
	
	@RequestMapping("/orderrequest")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int mem_code = 1;
		List<OrderRequestDataBean> dtos = warehousingDao.getOrderReqList(mem_code);
		
		request.setAttribute("dtos", dtos);
		
		return new ModelAndView("warehousing/orderRequest");
	}

}
