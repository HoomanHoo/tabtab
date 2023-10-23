package handler.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;

@Controller
public class QuestionWriteFormHandler implements CommandHandler {    	
	
	@RequestMapping("/questionwriteform")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession	session	= request.getSession();

	    if(   session == null
	 	       || session.getAttribute("mem_code") == null) {
	    	// 로그인이 안된 상태
	    	return new ModelAndView("user/loginForm");
	    }

	    String mem_desc_code = (String) session.getAttribute("mem_desc_code");
	    
	    
	    
		//제목글
	    int con_num		= 0;	//임시 구분용도   0제목글/ !0 답변글
	    int contentGroup			= 1;	//그룹화
	    int contentProcedure		= 0;	//그룹 내 글순서
	    int contentLevel	= 0;	//그룹 내 들여쓰기 순서
	    
	    if( request.getParameter( "con_num" ) != null ) {
	    	 //답변글
		     con_num	= Integer.parseInt( request.getParameter( "con_num" ) );
		     contentGroup		= Integer.parseInt( request.getParameter( "contentgroup" ) ); 
		     contentProcedure	= Integer.parseInt( request.getParameter( "contentprocedure" ) );
		     contentLevel	= Integer.parseInt( request.getParameter( "contentlevel" ) );
	    }

	    request.setAttribute("con_num",	 con_num );
	    request.setAttribute("contentGroup",		 contentGroup );
	    request.setAttribute("contentProcedure",	 contentProcedure );
	    request.setAttribute("contentLevel", contentLevel );

		return new ModelAndView("question/questionwriteForm");
	}
}
