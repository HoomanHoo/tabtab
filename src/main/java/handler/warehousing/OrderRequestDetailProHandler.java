package handler.warehousing;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import order.DeliStateDataBean;
import order.OrderDao;
import warehousing.DetailWarehousingDataBean;
import warehousing.WarehousingDao;
import warehousing.WarehousingDataBean;
@Controller
public class OrderRequestDetailProHandler implements CommandHandler{
	
	@Resource(name="warehousingDao")
	WarehousingDao warehousingDao;
	
	@Resource(name="orderDao")
	OrderDao orderDao;
	
	@RequestMapping("/detailorderrequestpro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("mem_code") == null) {
			return new ModelAndView("admin/loginForm");
		}
		else {
			String[] mediCode = request.getParameterValues("mediCode");
			String[] dwSupplyValue = request.getParameterValues("dwSupplyValue");
			String[] dwQuan = request.getParameterValues("dwQuan");
			String[] remarks = request.getParameterValues("remarks");
			String oNum = request.getParameter("oNum");
			int o_num = Integer.parseInt(oNum);
			int supplyValues = 0;
			int warehousingQuans = 0;
			int mem_code = warehousingDao.getMemCode(o_num);
			LocalDateTime now = LocalDateTime.now();
			Timestamp date = Timestamp.valueOf(now); 
			
			for(int i = 0; i < mediCode.length; i++) {
				int supplyValue = Integer.parseInt(dwSupplyValue[i]);
				int warehousingQuan = Integer.parseInt(dwQuan[i]);
				
				supplyValues += supplyValue;
				warehousingQuans += warehousingQuan;
				
			}
			
			WarehousingDataBean warehousingDataBean = new WarehousingDataBean();
			warehousingDataBean.setMem_code(mem_code);
			warehousingDataBean.setO_num(o_num);
			warehousingDataBean.setSupply_values(supplyValues);
			warehousingDataBean.setWarehousing_quans(warehousingQuans);
			warehousingDataBean.setW_date(date);
			int w_num = warehousingDao.warehousing(warehousingDataBean);
			if(Integer.toString(w_num) != null) {
				int result = 0;
				String d_code = "11";
				for(int i = 0; i < mediCode.length; i++) {
					DetailWarehousingDataBean detailWarehousingDataBean = new DetailWarehousingDataBean();
					detailWarehousingDataBean.setW_num(w_num);
					detailWarehousingDataBean.setMedi_code(Integer.parseInt(mediCode[i]));
					detailWarehousingDataBean.setDw_quan(Integer.parseInt(dwQuan[i]));
					detailWarehousingDataBean.setDw_supply_values(Integer.parseInt(dwSupplyValue[i]));
					detailWarehousingDataBean.setUn_delivery_reason(remarks[i]);
					result += warehousingDao.detailWarehousing(detailWarehousingDataBean);
				}
				DeliStateDataBean deliStateDataBean = new DeliStateDataBean();
				deliStateDataBean.setO_num(o_num);
				deliStateDataBean.setD_code(d_code);
				deliStateDataBean.setD_date(date);
				warehousingDao.updateDeliState(deliStateDataBean);
				request.setAttribute("result", result);
				return new ModelAndView("warehousing/orderRequestDetailPro");
			}
			else {
				int error = 0;
				request.setAttribute("result", error);
				return new ModelAndView("warehousing/orderRequestDetailPro");
			}
		}
		
		
	}

}
