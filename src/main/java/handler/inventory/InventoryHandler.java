package handler.inventory;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import inventory.InventoryDataBean;
import handler.CommandHandler;
import inventory.InventoryDao;
@Controller
public class InventoryHandler implements CommandHandler {

	@Resource(name="inventoryDao")
	private InventoryDao inventoryDao;
	
	@RequestMapping("/inventory")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession	session	= request.getSession();

	    if(   session == null
	       || session.getAttribute("mem_code") == null) {
	    	// 로그인이 안된 상태
	    	return new ModelAndView("user/loginForm");
	    }

	    int	mem_code	= Integer.parseInt((String) request.getSession().getAttribute("mem_code"));

	    request.setAttribute("mem_code", mem_code);
		
		List<InventoryDataBean> dtos = inventoryDao.getInventories(mem_code);
		
		for(InventoryDataBean dto : dtos) {
			System.out.println(Thread.currentThread().getStackTrace()[1] + ">> medi_name : " + dto.getMedi_name());
			System.out.println(Thread.currentThread().getStackTrace()[1] + ">> rt_inven : " + dto.getRt_inven() + "\n");
		}

		request.setAttribute("dtos", dtos);
		request.setAttribute("count", dtos.size());

		return new ModelAndView("inventory/inventory");
	}
}
