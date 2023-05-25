package handler.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
public class AdminSignUpListHandler implements CommandHandler{

	@Resource(name="adminDao")
	private AdminDao adminDao;
	
	@RequestMapping("/adminsignuplist")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		int pageBlock = 3;							//한 번에 출력할 페이지 번호 개수
		int pageSize = 10;							//한 페이지에 출력할 글의 개수
		int start = 0;								//페이지의 첫 글
		int end = 0;								//페이지의 마지막 글
		String pageNum = null;						//현재 페이지
		int currentPage = 0;						//계산용 현재 페이지
		int number = 0;								//출력용 글번호
		int startPage = 0;							//출력할 페이지 시작 번호
		int endPage = 0;							//출력할 페이지 끝 번호
		int pageCount = 0;							//전체 페이지 개수
	
	
		int count = adminDao.getCount();						//db처리 부분
	
		pageNum = request.getParameter("pageNum");
		if( pageNum == null ) {
			pageNum = "1";
		}
		currentPage = Integer.parseInt(pageNum);
		
		start =  (currentPage -1 ) * pageSize + 1; 			//(5-1)*10+1	41
		end = start + pageSize - 1;							//41 + 10 -1	50
		if(count < end ) {
			end  = count;
		}
		
		number = count - ( currentPage - 1 ) * pageSize;			//50 - ( 2 - 1 ) * 10	40
	
		pageCount =( count / pageSize ) + ( count % pageSize > 0 ? 1 : 0 );			//나머지가 남으면 페이지를1더하고 아니면 0을 더해라
		startPage = (currentPage / pageBlock ) * pageBlock + 1;						//(15/10)*10 +1		11
		if( currentPage % pageBlock == 0) {
			startPage -= pageBlock;
		}
		endPage = startPage + pageBlock - 1;
		if(pageCount < endPage ) {
			endPage = pageCount;
		}
	
		
		request.setAttribute("count", count);
		request.setAttribute("number", number);
		
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageBlock", pageBlock);
		/*
		String apply_desc_code = request.getParameter("apply_desc_code");		
		int mem_code = Integer.parseInt(request.getParameter("mem_code") );
		
		int result = adminDao.selectA(apply_desc_code);
		
		request.setAttribute( "result", result );
		request.setAttribute( "apply_desc_code", apply_desc_code);
		*/
		
		
		
		if(count > 0 ) {
			//글이 있는경우		
			Map<String, Integer> map  = new HashMap<String, Integer>();
			map.put("start", start);
			map.put( "end", end);
			
			List <AdminDataBean> dtos =  adminDao.getArticles( map );//겟 아티클스 호출>여기서 맵으로 만들어 던짐>>여기가 처리하는자리고 저기 디비빈은 처리하는데가 아니여서 
			request.setAttribute("dtos", dtos);//이메일과 멤코드받아와라 그건 dtos라 하겠다 
		}
		/**/
		
		
		
		
		return new ModelAndView("admin/signUpList");
	}

}
