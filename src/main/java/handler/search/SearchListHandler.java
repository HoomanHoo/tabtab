package handler.search;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import search.SearchDao;
import search.SearchDataBean;

public class SearchListHandler {
	@Resource(name="searchDao")
	private SearchDao searchDao;
    
	@RequestMapping("/searchsearchlist")
	
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		/*
	    int pageBlock= 3;            //한 번에 출력할 페이지 번호 개수
	    int pageSize= 10;            //한 페이지에 출력할 글의 개수
	    int start= 0;                //페이지의 첫 글
	    int end= 0;                  //페이지의 마지막 글
	    String pageNum= null;        //현재 페이지
	    int currentPage= 0;          //계산용 현재 페이지
	    int number= 0;               //출력용 글번호
	    int startPage= 0;            //출력할 페이지 시작 번호
	    int endPage= 0;              //출력할 페이지 끝 번호
	    int pageCount= 0;            //전체 페이지 개수

    	int count= searchDao.getCount();

    	
	    pageNum= request.getParameter( "pageNum" );
	    if( pageNum== null ){
	    	pageNum= "1";
	    }
	    currentPage= Integer.parseInt( pageNum );
	    
	    start= ( currentPage-1 )* pageSize +1;      //(5-1)*10 + 1             41
	    end= start + pageSize-1;                    //41+10-1                  50
	    if( count<end ){
	    	end= count;
	    }    
	    
	    number= count - ( currentPage - 1 )*pageSize;  //50 - ( 2-1 )*10         40
	    
	    pageCount= ( count / pageSize ) + ( count % pageSize > 0 ? 1 : 0 );
	    startPage= ( currentPage / pageBlock ) * pageBlock + 1;   // ( 5 / 10 )*10 +1 (java는 정수끼리 나누면 정수나오니까)  1
	    if( currentPage % pageBlock == 0 ){
	    	startPage -= pageBlock;
	    }
	    endPage= startPage + pageBlock - 1;                       //11 + 10 - 1          20
	    if( pageCount < endPage ){
	    	endPage= pageCount;
	    }
	    
	    request.setAttribute( "count", count );
	    request.setAttribute( "number", number );
	    
	    request.setAttribute( "pageNum", pageNum );
	    request.setAttribute( "currentPage", currentPage );
	    request.setAttribute( "startPage", startPage );
	    request.setAttribute( "endPage", endPage );
	    request.setAttribute( "pageCount", pageCount );
	    request.setAttribute( "pageBlock", pageBlock );

	    if(count>0) {
	    	Map<String, Integer> map= new HashMap<String, Integer>();
	    	map.put("start", start);
	    	map.put("end", end);
	    	List<SearchDataBean> dtos= searchDao.getArticles( map );   //글 없을 때 실행하면 에러남
	    	request.setAttribute("dtos",dtos);
	    }
	    */
        return new ModelAndView("search/searchlist");
    }
}
