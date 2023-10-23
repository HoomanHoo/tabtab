package handler.question;

import java.sql.Timestamp;

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
public class QuestionWriteProHandler implements CommandHandler{
    
	@Resource(name="questionDao")
	private QuestionDao questionDao;
	
	@RequestMapping("/questionwritepro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
    
		HttpSession	session	= request.getSession();

	    if(   session == null
	 	       || session.getAttribute("mem_code") == null) {
	    	// 로그인이 안된 상태
	    	return new ModelAndView("user/loginForm");
	    }

	    int	mem_code	= (int) request.getSession().getAttribute("mem_code");
	    
	    request.setCharacterEncoding( "utf-8" );

        String	strConNum		= request.getParameter("con_num");
        String	strContentGroup			= request.getParameter("contentGroup");
        String	strContentProcedure		= request.getParameter("contentProcedure");
        String	strContentLevel		= request.getParameter("contentLevel");
        String	strConSubject	= request.getParameter("con_subject");
        String	strContent		= request.getParameter("content");

        
        int		con_num		= Integer.parseInt(strConNum);
        int		contentGroup			= Integer.parseInt(strContentGroup);
        int		contentProcedure		= Integer.parseInt(strContentProcedure);
        int		contentLevel	= Integer.parseInt(strContentLevel);
        
		QuestionDataBean	dto	= new QuestionDataBean();

		dto.setCon_num( con_num );
		dto.setContent_group( contentGroup );
		dto.setContent_procedure( contentProcedure );
		dto.setContent_level( contentLevel );		
		dto.setCon_subject( strConSubject);
		dto.setContent( strContent );
		dto.setMem_code( mem_code );
	    dto.setW_date( new Timestamp( System.currentTimeMillis() ) );

        System.out.println("con_num : " + con_num);
        System.out.println("mem_code		: " + mem_code);
        System.out.println("strConSubject	: " + strConSubject);
        System.out.println("strContentGroup	: " + strContentGroup);
        System.out.println("strContentProcedure	: " + strContentProcedure);
        System.out.println("strContentLevel		: " + strContentLevel);
        System.out.println("strContent		: " + strContent);
        
	    int result= questionDao.insertArticle( dto );
	    
	    request.setAttribute("result", result );
		
		return new ModelAndView("question/questionwritePro");
		
	}
}
