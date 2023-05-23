package handler.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import order.DeliStateDataBean;
import order.OrderDao;
import order.SimpleInvenDataBean;
import warehousing.WarehousingDao;
import warehousing.WarehousingDataBean;
@Controller
public class OrderHistoryDetailProHandler {
	
	@Resource(name="orderDao")
	OrderDao orderDao;
	@Resource(name="warehousingDao")
	WarehousingDao warehousingDao;
	
	@RequestMapping(value= "/historydetailpro", produces = "application/json; charset=utf-8")
	@ResponseBody
	public ResponseEntity<String> process(HttpServletResponse response, @RequestBody Map<String, Object> map) throws Exception {
		
		Map<String, String> a = new HashMap<String, String>();
		response.setCharacterEncoding("UTF-8");
		
		List<String> mediCode = (List<String>) map.get("mediCode");
		List<String> orderQuan = (List<String>)map.get("orderQuan");
		
		String str = (String) map.get("orderNumber");
		int orderNumber = Integer.parseInt(str);
		String d_code = "12";
		
		int mem_code = 1;
		
		int result = 0;
		
		for(int i = 0; i < mediCode.size(); i++) {
			WarehousingDataBean dto = new WarehousingDataBean();
			dto.setMem_code(mem_code);
			String str2 = mediCode.get(i);
			dto.setMedi_code(Integer.parseInt(str2));
			String str3 = orderQuan.get(i);
			dto.setW_quan(Integer.parseInt(str3));
			dto.setRt_inven(Integer.parseInt(str3));
			
			result = warehousingDao.warehousing(dto);
			
			int check = warehousingDao.checkInventory(dto);
			
			if(check == 0) {
				warehousingDao.insertQuan(dto);
			}
			else {
				warehousingDao.updateQuan(dto);
			}
		}
		DeliStateDataBean dto = new DeliStateDataBean();
		dto.setD_code(d_code);
		dto.setO_num(orderNumber);
		warehousingDao.updateDeliState(dto);
		
		
		List<SimpleInvenDataBean> simpleDataBean = orderDao.getSimpleInven(mem_code);

		ObjectMapper objMapper = new ObjectMapper(); 
		String json = objMapper.writeValueAsString(simpleDataBean);

		return new ResponseEntity<>(json, HttpStatus.OK);
	}

}
