package handler.search;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import search.SearchDBBean;
import search.SearchDao;
import search.SearchDataBean;

@Controller
public class SearchHandler implements CommandHandler {   

	@Resource(name="searchDao")
	private SearchDao searchDao;
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String keyword= request.getParameter("keyword");
		String type= request.getParameter("type");
		//int pageNum=Integer.parseInt(request.getParameter("pageNum"));
		//int count= Integer.parseInt(request.getParameter("count"));		
		
	    int pageBlock= 3;            //�� ���� ����� ������ ��ȣ ����
	    int pageSize= 10;            //�� �������� ����� ���� ����
	    int start= 0;                //�������� ù ��
	    int end= 0;                  //�������� ������ ��
	    String pageNum= null;        //���� ������
	    int currentPage= 0;          //���� ���� ������
	    int number= 0;               //��¿� �۹�ȣ
	    int startPage= 0;            //����� ������ ���� ��ȣ
	    int endPage= 0;              //����� ������ �� ��ȣ
	    int pageCount= 0;            //��ü ������ ����

		int count=searchDao.getCount();
	    	
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
	    startPage= ( currentPage / pageBlock ) * pageBlock + 1;   // ( 5 / 10 )*10 +1 (java�� �������� ������ ���������ϱ�)  1
	    if( currentPage % pageBlock == 0 ){
	    	startPage -= pageBlock;
	    }
	    endPage= startPage + pageBlock - 1;                       //11 + 10 - 1          20
	    if( pageCount < endPage ){
	    	endPage= pageCount;
	    }
	   
	    request.setAttribute( "type", type);
	    request.setAttribute( "keyword", keyword);
	    
	    request.setAttribute( "count", count );
	    request.setAttribute( "number", number );
	    
	    request.setAttribute( "pageNum", pageNum );
	    request.setAttribute( "currentPage", currentPage );
	    request.setAttribute( "startPage", startPage );
	    request.setAttribute( "endPage", endPage );
	    request.setAttribute( "pageCount", pageCount );
	    request.setAttribute( "pageBlock", pageBlock );

	    if(count>0) {
	    	Map<String, Object> map= new HashMap<String, Object>();
	    	
	    	map.put("type", type);
	    	map.put("keyword", keyword);
	    	map.put("start", start);
	    	map.put("end", end);
	    	List<SearchDataBean> dtos= SearchDao.getSearchList( map );   
	    	request.setAttribute("dtos",dtos);
	    }	   
		return new ModelAndView("search/search");
	}	
}

