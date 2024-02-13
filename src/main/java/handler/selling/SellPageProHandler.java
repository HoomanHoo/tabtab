package handler.selling;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import inventory.InventoryDataBean;
import order.DeliStateDataBean;
import order.DetailOrderDataBean;
import order.OrderDao;
import order.OrderDataBean;
import selling.CheckValueDataBean;
import selling.DetailSellingDataBean;
import selling.SellingDao;
import selling.SellingDataBean;
@Controller
public class SellPageProHandler {
	
	@Resource(name="sellingDao")
	SellingDao sellingDao;
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/sellingpro")
	public ModelAndView process(@RequestBody Map<String, Object>map, HttpServletRequest request ,HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		
		List<String> mediCodeList = (List<String>) map.get("mediCode");
		List<String> sellingQuanList = (List<String>)map.get("sellingQuan");
		List<String> sellingPriceList = (List<String>)map.get("sellingPrice");
		
		int[] mediCodes = new int[mediCodeList.size()];
		int[] sellingQuans = new int[mediCodeList.size()];
		int[] sellingPrices = new int[mediCodeList.size()];
		
		
		
		int mem_code = Integer.parseInt((String)session.getAttribute("mem_code"));
		int allSellingQuan = 0;
		int allPrice = 0;
		
		
		for(int i = 0; i < mediCodeList.size(); i++) {
			mediCodes[i] = Integer.parseInt(mediCodeList.get(i));
			sellingQuans[i] = Integer.parseInt(sellingQuanList.get(i));
			sellingPrices[i] = Integer.parseInt(sellingPriceList.get(i)); 
			allSellingQuan += sellingQuans[i];
			allPrice += sellingPrices[i];
		}
		
		SellingDataBean dto = new SellingDataBean();
		dto.setMem_code(mem_code);
		dto.setSelling_prices(allPrice);
		dto.setSelling_quans(allSellingQuan);
		LocalDateTime now = LocalDateTime.now();
		Timestamp date = Timestamp.valueOf(now); 
		dto.setS_date(date);
		int s_num = sellingDao.insertSelling(dto);
		int result = 0;
		int result2 = 0;
		for(int i = 0; i < mediCodeList.size(); i++) {
			DetailSellingDataBean dsDto = new DetailSellingDataBean();
			dsDto.setS_num(s_num);
			dsDto.setMedi_code(mediCodes[i]);
			dsDto.setDs_selling_quan(sellingQuans[i]);
			dsDto.setDs_selling_price(sellingPrices[i]);
			result = sellingDao.insertDetailSelling(dsDto);

			if(result != 0) {
				dsDto.setMem_code(mem_code);
				result2 = sellingDao.updateInventory(dsDto);
			}
			else {
				String error = "오류가 발생했습니다 잠시 후 다시 시도해주세요";
				request.setAttribute("error", error);
				return new ModelAndView("selling/sellingPage");
			}
		}
		if(result2 != 0) {
			List<CheckValueDataBean> checks = sellingDao.checkValue(mem_code);
			int sumSupplyValues = 0;
			int sumOrderCount = 0;
			String supplierCode = "1";
			if(checks.size() != 0) {
				OrderDataBean oDto = new OrderDataBean();
				oDto.setO_date(date);
				oDto.setMem_code(mem_code);
				int o_num = sellingDao.insertAndGetONum(oDto);
				
				for(int i = 0; i < checks.size(); i++) { 
					DetailOrderDataBean doDto = new DetailOrderDataBean();
					CheckValueDataBean chDto = checks.get(i);
					doDto.setO_num(o_num);
					doDto.setMedi_code(chDto.getMedi_code());
					doDto.setOrder_quan(chDto.getAo_quan());
					doDto.setSupply_values(chDto.getSupply_values());
					sumSupplyValues += chDto.getSupply_values();
					sumOrderCount += chDto.getAo_quan();
					sellingDao.insertDetailOrder(doDto);
				}
				oDto.setO_num(o_num);
				oDto.setSum_supply_value(sumSupplyValues);
				oDto.setSum_order_count(sumOrderCount);
				oDto.setSupplier_code(supplierCode);
				oDto.setMemo(" ");
				sellingDao.updateOrder(oDto);
				DeliStateDataBean dsDto = new DeliStateDataBean();
				dsDto.setO_num(o_num);
				dsDto.setD_date(date);
				orderDao.insertDeliCode(dsDto);
			}
			
		}
		else {
			String error = "오류가 발생했습니다 잠시 후 다시 시도해주세요";
			request.setAttribute("error", error);
			return new ModelAndView("selling/sellingPage");
		}
		
		List<InventoryDataBean> dtos = sellingDao.getInventory(mem_code);
		request.setAttribute("dtos", dtos);
		
		
		return new ModelAndView("selling/sellPagePro");
	}

}
