package handler.question;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import question.QuestionDataBean;
import handler.CommandHandler;
import question.QuestionDao;

@Controller
public class QuestionHandler implements CommandHandler{
    
	@Resource(name="questionDao")
	private QuestionDao questionDao;

	@RequestMapping("/question")
	@Override
    public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession	session	= request.getSession();

	    if(   session == null
	       || session.getAttribute("mem_code") == null) {
	    	// 로그인이 안된 상태
	    	return new ModelAndView("user/loginForm");
	    }
	    String mem_desc_code = (String) session.getAttribute("mem_desc_code");

	    int		pageBlock	= 3;		//한 번에 출력할 페이지 번호 개수
	    int		pageSize	= 10;		//한 페이지에 출력할 글의 개수
	    int		start		= 0;		//페이지의 첫 글
	    int		end			= 0;		//페이지의 마지막 글
	    String	pageNum		= null;		//현재 페이지
	    int		currentPage	= 0;		//계산용 현재 페이지
	    int		number		= 0;		//출력용 글번호
	    int		startPage	= 0;		//출력할 페이지 시작 번호
	    int		endPage		= 0;		//출력할 페이지 끝 번호
	    int		pageCount	= 0;		//전체 페이지 개수
	    int		count		= questionDao.getCount();

	    pageNum	= request.getParameter( "pageNum" );

	    if( pageNum== null ){
	    	pageNum= "1";
	    }
	    
	    currentPage= Integer.parseInt( pageNum );
	    
	    start	= ( currentPage-1 )* pageSize +1;      //(5-1)*10 + 1             41
	    end		= start + pageSize-1;                    //41+10-1                  50

	    if( count<end ){
	    	end= count;
	    }    
	    
	    number		= count - ( currentPage - 1 )*pageSize;  //50 - ( 2-1 )*10         40
	    pageCount	= ( count / pageSize ) + ( count % pageSize > 0 ? 1 : 0 );
	    startPage	= ( currentPage / pageBlock ) * pageBlock + 1;   // ( 5 / 10 )*10 +1 (java는 정수끼리 나누면 정수나오니까)  1

	    if( currentPage % pageBlock == 0 ){
	    	startPage -= pageBlock;
	    }
	    
	    endPage		= startPage + pageBlock - 1;                       //11 + 10 - 1          20

	    if( pageCount < endPage ){
	    	endPage= pageCount;
	    }
	    
		System.out.println(Thread.currentThread().getStackTrace()[1] + ">> pageNum : " + pageNum);

		if(count>0) {
	    	Map<String, Integer> map= new HashMap<String, Integer>();

	    	map.put("start", start);
	    	map.put("end",   end);
	    	
	    	List<QuestionDataBean>	dtos	= questionDao.getArticles( map );   //글 없을 때 실행하면 에러남
	    	
	    	request.setAttribute( "dtos", dtos);

	    	request.setAttribute( "number", number );
		    request.setAttribute( "count", count );
		    request.setAttribute( "pageNum", pageNum );
		    request.setAttribute( "currentPage", currentPage );
		    request.setAttribute( "startPage", startPage );
		    request.setAttribute( "endPage", endPage );
		    request.setAttribute( "pageCount", pageCount );
		    request.setAttribute( "pageBlock", pageBlock );
		    request.setAttribute("memDescCode", mem_desc_code);
	    }
	    System.out.println("유저 or 어드민" + mem_desc_code);
        return new ModelAndView("question/question");
    }
}
