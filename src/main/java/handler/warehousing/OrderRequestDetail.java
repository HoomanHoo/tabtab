package handler.warehousing;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import warehousing.DetailOrderRequestDataBean;
import warehousing.WarehousingDao;
@Controller
public class OrderRequestDetail implements CommandHandler{
	
	@Resource(name="warehousingDao")
	WarehousingDao warehousingDao;
	
	@RequestMapping("/detailrequest")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String oNum = request.getParameter("onum");
		int o_num = Integer.parseInt(oNum);
		List<DetailOrderRequestDataBean> dtos = warehousingDao.getDetailOrderRequest(o_num);
		
		request.setAttribute("dtos", dtos);
		
		return new ModelAndView("warehousing/orderRequestDetail");
	}

}