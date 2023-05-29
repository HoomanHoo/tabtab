package handler.order;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import order.AutoOrderListDataBean;
import order.OrderDao;
@Controller
public class DeleteAutoOrderSetting{

	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/deleteautoordersetting")
	
	public ModelAndView process(@RequestBody Map<String, Object> map, HttpServletRequest request , HttpServletResponse response) throws Exception {
		
		String medi_code = (String) map.get("mediCode");
		int mem_code = 1;
		
		AutoOrderListDataBean dto = new AutoOrderListDataBean();
		dto.setMedi_code(Integer.parseInt(medi_code));
		dto.setMem_code(mem_code);
		
		String result = orderDao.deleteAutoOrderSetting(dto);
		List<AutoOrderListDataBean> dtos = orderDao.getAutoOrderList(mem_code);
		
		request.setAttribute("result", result);
		request.setAttribute("dtos", dtos);
		
		
		return new ModelAndView("order/deleteAutoOrderSetting");
	}

}
