package handler.order;

import java.util.ArrayList;
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

import inventory.InventoryDataBean;
import order.DeliStateDataBean;
import order.OrderDao;
import order.SimpleInvenDataBean;
import warehousing.DetailWarehousingDataBean;
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
		
		ArrayList<String> mediCode = (ArrayList<String>) map.get("mediCode");
		ArrayList<String> dwQuan = (ArrayList<String>) map.get("dwQuan");
		String str = (String) map.get("orderNumber");
		
		int o_num = Integer.parseInt(str);
		String d_code = "12";
		int mem_code = 1;
		
		for(int i = 0; i < mediCode.size(); i++) {
			System.out.println(dwQuan.get(0));
			System.out.println(mediCode.get(0));
			
			InventoryDataBean dto = new InventoryDataBean();
			int dw_quan = Integer.parseInt(dwQuan.get(i));
			int medi_code = Integer.parseInt(mediCode.get(i));
			
			dto.setRt_inven(dw_quan);
			dto.setMedi_code(medi_code);
			dto.setMem_code(mem_code);
			int result = warehousingDao.checkInventory(dto);
			if(result == 0) {
				warehousingDao.insertQuan(dto);
			}
			else {
				warehousingDao.updateQuan(dto);
			}

		}

		DeliStateDataBean dDto = new DeliStateDataBean();
		dDto.setD_code(d_code);
		dDto.setO_num(o_num);
		warehousingDao.updateDeliState(dDto);
		
		
		List<SimpleInvenDataBean> simpleDataBean = orderDao.getSimpleInven(mem_code);

		ObjectMapper objMapper = new ObjectMapper(); 
		String json = objMapper.writeValueAsString(simpleDataBean);

		return new ResponseEntity<>(json, HttpStatus.OK);
	}

}
