package handler.search;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
public class SearchListHandler implements CommandHandler {
	@Resource(name="searchDao")
	private SearchDao searchDao;
    
	@RequestMapping("/searchlist")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
	    int pageBlock	= 3;		//한 번에 출력할 페이지 번호 개수
	    int pageSize	= 10;		//한 페이지에 출력할 글의 개수
	    int start		= 0;		//페이지의 첫 글
	    int end			= 0;		//페이지의 마지막 글
	    String pageNum	= null;		//현재 페이지
	    int currentPage	= 0;		//계산용 현재 페이지
	    int number		= 0;		//출력용 글번호
	    int startPage	= 0;		//출력할 페이지 시작 번호
	    int endPage		= 0;		//출력할 페이지 끝 번호
	    int pageCount	= 0;		//전체 페이지 개수
	    int count		= 0;
	    
	    pageNum	= request.getParameter( "pageNum" );

	    if( pageNum== null ){
	    	pageNum= "1";
	    }

		String	type	= request.getParameter("type");
	    if(type == null) {
	    	type= "";
	    }
	    
		String	keyword = request.getParameter("keyword");
		if(keyword == null) {
	    	keyword= "";
	    }
		
	    if(type.equals("1")) {
	    	System.out.println("call getCountByName");
		    count	= searchDao.getCountByName(keyword);
	    } else if(type.equals("2")) {
	    	System.out.println("call getCountByIngre");
		    count	= searchDao.getCountByIngre(keyword);
	    }
	    
	    currentPage	= Integer.parseInt( pageNum );
	    start		= ( currentPage-1 ) * pageSize +1;      //(5-1)*10 + 1             41
	    end			= start + pageSize - 1;                 //41+10-1                  50

	    if( count < end ) {
	    	end	= count;
	    }    

		System.out.println("pageNum     : " + pageNum);
		System.out.println("type        : " + type);
		System.out.println("keyword     : " + keyword);
		System.out.println("currentPage : " + currentPage);
		System.out.println("start       : " + start);
		System.out.println("end         : " + end);
	    
//	    number		= count - ( currentPage - 1 )*pageSize;		// 50 - ( 2-1 )*10		: 끝번호 부터 시작 감소
	    number		= (( currentPage - 1 ) * pageSize) + 1;		// (( 2-1 )*10) + 1		: 1부터 시작 증가
	    pageCount	= ( count / pageSize ) + ( count % pageSize > 0 ? 1 : 0 );
	    startPage	= ( currentPage / pageBlock ) * pageBlock + 1;   // ( 5 / 10 )*10 +1 (java는 정수끼리 나누면 정수나오니까)  1

		System.out.println("number    : " + number);
		System.out.println("pageCount : " + pageCount);
		System.out.println("startPage : " + startPage);

	    if( currentPage % pageBlock == 0 ){
	    	startPage -= pageBlock;
	    }
	    
	    endPage= startPage + pageBlock - 1;                       //11 + 10 - 1          20
	    
	    if( pageCount < endPage ){
	    	endPage= pageCount;
	    }
	    
	    request.setAttribute( "count"		, count );
	    request.setAttribute( "number"		, number );
//	    request.setAttribute( "pageNum"		, pageNum );
	    request.setAttribute( "currentPage"	, currentPage );
	    request.setAttribute( "startPage"	, startPage );
	    request.setAttribute( "endPage"		, endPage );
	    request.setAttribute( "pageCount"	, pageCount );
	    request.setAttribute( "pageBlock"	, pageBlock );
	    request.setAttribute( "type"		, type );
	    request.setAttribute( "keyword"		, keyword );
	    
	    if(count > 0) {
	    	Map<String, Object> map= new HashMap<>();	    
	    	
	    	map.put("start", start);
	    	map.put("end", end);
	    	map.put("keyword", keyword);
	    	
	    	List<SearchDataBean> dtos	= null;

	    	if(type.equals("1")) {
		    	dtos= searchDao.getSearchListByName(map);
		    } else if(type.equals("2")) {
		    	dtos= searchDao.getSearchListByIngre(map);
		    }
	    	
	    	request.setAttribute("dtos", dtos);
	    	
	    	for(SearchDataBean dto : dtos) {
	    		System.out.println("약품명 : " + dto.getMedi_name());
	    		System.out.println("주성분 : " + dto.getChief_ingre() + "\n");	    		
	    	}
	    }
		    
        return new ModelAndView("search/searchlist");
    }

}


