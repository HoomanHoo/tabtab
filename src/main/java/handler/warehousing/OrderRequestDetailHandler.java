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
import warehousing.DetailWarehousingDataBean;
import warehousing.WarehousingDao;
@Controller
public class OrderRequestDetailHandler implements CommandHandler{
	
	@Resource(name="warehousingDao")
	WarehousingDao warehousingDao;
	
	@RequestMapping("/detailrequest")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String oNum = request.getParameter("onum");
		int o_num = Integer.parseInt(oNum);
		List<DetailOrderRequestDataBean> dtos = warehousingDao.getDetailOrderRequest(o_num);
		String dCode = warehousingDao.getDeliveryCode(o_num);
		int d_code = Integer.parseInt(dCode);
		
		if(d_code == 10) {
			request.setAttribute("d_code", d_code);
			request.setAttribute("o_num", o_num);
			request.setAttribute("dtos", dtos);
		}
		else {
			int w_num = warehousingDao.getOrderNumber(o_num);
			List<DetailWarehousingDataBean> dwDtos = warehousingDao.getDetailWarehousing(w_num);
			request.setAttribute("d_code", d_code);
			request.setAttribute("o_num", o_num);
			request.setAttribute("dtos", dtos);
			request.setAttribute("dwDtos", dwDtos);
		}
		return new ModelAndView("warehousing/orderRequestDetail");
	}

}
