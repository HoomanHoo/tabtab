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

import order.OrderDao;
import order.WarehousingDataBean;
@Controller
public class OrderHistoryDetailProHandler {
	
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping(value= "/historydetailpro", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<String> process(HttpServletResponse response, @RequestBody Map<String, Object> map) throws Exception {
		
		Map<String, String> a = new HashMap<String, String>();
		
		
		List<String> mediCode = (List<String>) map.get("mediCode");
		List<String> orderQuan = (List<String>)map.get("orderQuan");
		
		int mem_code = 1;
		
		int result = 0;
		
		for(int i = 0; i < mediCode.size(); i++) {
			WarehousingDataBean dto = new WarehousingDataBean();
			dto.setMem_code(mem_code);
			String str = mediCode.get(i);
			dto.setMedi_code(Integer.parseInt(str));
			String str2 = orderQuan.get(i);
			dto.setW_quan(Integer.parseInt(str2));
			
			result = orderDao.warehousing(dto);
		}

		ObjectMapper objMapper = new ObjectMapper(); 
		String json = objMapper.writeValueAsString(result);

		return new ResponseEntity<>(json, HttpStatus.OK);
	}

}
