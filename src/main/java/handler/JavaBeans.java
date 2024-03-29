package handler;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import admin.AdminDBBean;
import admin.AdminDao;
import inventory.InventoryDBBean;
import inventory.InventoryDao;
import misc.CheckAdminInfo;
import misc.CheckMember;
import misc.CheckUserInfo;
import misc.SendMail;
import order.OrderDBBean;
import order.OrderDao;
import question.QuestionDBBean;
import question.QuestionDao;
import search.SearchDBBean;
import search.SearchDao;
import selling.SellingDBBean;
import selling.SellingDao;
import user.ULogonDBBean;
import user.ULogonDao;
import warehousing.WarehousingDBBean;
import warehousing.WarehousingDao;


//@Configuration 어노테이션이 붙은 클래스 내 @Bean 메서드들은 singleton으로 생성된다

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
	@SessionScope
	public AdminDao adminDao() {
		return new AdminDBBean();
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
	@Bean
	public SellingDao sellingDao() {
		return new SellingDBBean();
	}
	
	// sendMail은 동작 과정 보고 bean에 등록할지 말지 결정하기
	@Bean
	public SendMail sendMail() {
		return new SendMail();
	}
	
	@Bean
	public CheckMember checkUser() {
		return new CheckUserInfo();
	}
	
	@Bean
	public CheckMember checkAdmin() {
		return new CheckAdminInfo();
	}
	
	
}
