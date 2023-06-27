package handler.search;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import search.SearchDao;
import search.SearchDataBean;

@Controller
public class SearchHandler implements CommandHandler{
	@Resource(name="searchDao")
	private SearchDao searchDao;
	
    
	@RequestMapping("/search")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		return new ModelAndView("search/search");
	}
}

