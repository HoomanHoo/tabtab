package handler.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;


public class SearchHandler implements CommandHandler {   
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return new ModelAndView("search/search");
	}

}

