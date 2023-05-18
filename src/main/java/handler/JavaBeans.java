package handler;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import admin.AdminDBBean;
import admin.AdminDao;
import misc.SendMail;
import order.OrderDBBean;
import order.OrderDao;
import user.ULogonDBBean;
import user.ULogonDao;



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
	

	
}
