package handler.admin;

import java.sql.Timestamp;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.AdminDao;
import admin.AdminDataBean;
import handler.CommandHandler;

@Controller
public class AdminSignUpDHandler implements CommandHandler{

	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@RequestMapping("/adminsignupd")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int mem_code = Integer.parseInt(request.getParameter("num") );
		String pageNum = request.getParameter("pageNum");
		
		AdminDataBean dto = adminDao.selectMember(mem_code);	//getArticle메서드니까?>글하나만 가져오면 됨>보드 디비빈
			
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("dto", dto);
		
		
		
		return new ModelAndView("admin/signUpD");
	}

}
///////////////////////////////

/*
가져와야 하는거 email, r_date, mem_code, pr_img, pl_img/pageNum
dto는 디비 안에 있는애만

	String pageNum = request.getParameter("pageNum");
		
		AdminDataBean dto = new AdminDataBean();
		dto.setEmail (request.getParameter("email") );
		dto.setR_date(new Timestamp(System.currentTimeMillis() ) );
		//dto.setMem_code (request.getParameter("mem_code") );
		dto.setPr_img(request.getParameter("pr_img") );
		dto.setPl_img(request.getParameter("pl_img") );
		
		AdminDataBean result = adminDao.selectMember(dto);
	
		request.setAttribute("dto", dto);
		request.setAttribute("result", result);
		System.out.println(result);
		request.setAttribute("pageNum", pageNum);
		


////////////
	String email = request.getParameter("email");
String password = request.getParameter("password");

int result = adminDao.check(email, password);

request.setAttribute("result", result);
request.setAttribute( "email", email);


int num = Integer.parseInt(request.getParameter("num") );
String pageNum = request.getParameter("pageNum");
int number = Integer.parseInt(request.getParameter("number") );
BoardDataBean dto = boardDao.getArticle(num);	//getArticle메서드니까?>글하나만 가져오면 됨>보드 디비빈
if(! request.getRemoteAddr().equals(dto.getIp() ) )//이거 ip다르면 조회수 올려라 
	boardDao.addCount( num );
request.setAttribute("number", number);		//이3줄이 새로 붙인거
request.setAttribute("pageNum", pageNum);
request.setAttribute("dto", dto);

//로그인꺼request.setAttribute( "email", email);
*/

