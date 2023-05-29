package handler.selling;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import inventory.InventoryDataBean;
import selling.SellingDao;
@Controller
public class SellPageHandler implements CommandHandler{
	
	
	@Resource(name="sellingDao")
	SellingDao sellingDao;
	
	@RequestMapping("sellingpage")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//checkId 해야함
		int mem_code = 1;
		
		List<InventoryDataBean> dtos = sellingDao.getInventory(mem_code);
		
		request.setAttribute("dtos", dtos);
		
		return new ModelAndView("selling/sellingPage");
	}

}
