package handler;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import admin.AdminDBBean;
import admin.AdminDao;
import inventory.InventoryDBBean;
import inventory.InventoryDao;
import misc.SendMail;
import order.OrderDBBean;
import order.OrderDao;
import question.QuestionDBBean;
import question.QuestionDao;
import search.SearchDBBean;
import search.SearchDao;
import user.ULogonDBBean;
import user.ULogonDao;
import warehousing.WarehousingDBBean;
import warehousing.WarehousingDao;



@Configuration
public class JavaBeans {

	@Bean
	public ViewResolver viewResolver() {
		UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	@Bean
	public AdminDao adminDao() {
		return new AdminDBBean();
	}
	
	@Bean
	public SendMail sendMail() {
		return new SendMail();
	}
	
	@Bean
	public ULogonDao uLogonDao() {
		return new ULogonDBBean();
	}
	
	@Bean
	public OrderDao orderDao() {
		return new OrderDBBean();
	}
	
	@Bean
	public SearchDao searchDao() {
		return new SearchDBBean();
	}
	@Bean
	public WarehousingDao warehousingDao() {
		return new WarehousingDBBean();
	}
	
	@Bean
	public QuestionDao questionDao() {
		return new QuestionDBBean();
	}
	
	@Bean
	public InventoryDao inventoryDao() {
		return new InventoryDBBean();
	}
	
}
