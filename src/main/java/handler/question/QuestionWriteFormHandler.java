package handler.question;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import question.QuestionDao;
import question.QuestionDataBean;

@Controller
public class QuestionWriteFormHandler implements CommandHandler {    	
	
	@RequestMapping("/questionwriteform")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//제목글
	    int con_num= 0;      //임시 구분용도   0제목글/ !0 답변글
	    int ref= 1;      //그룹화
	    int re_step= 0;  //그룹 내 글순서
	    int re_level= 0; //그룹 내 들여쓰기 순서
	    int mem_code=0;
	    
	    QuestionDataBean dto = new QuestionDataBean();
	    dto.setMem_code( Integer.parseInt( request.getParameter("mem_code")));
	    
	    if( request.getParameter( "con_num" ) != null ) {
	    	 //답변글
		     con_num= Integer.parseInt( request.getParameter( "con_num" ) );
		     ref= Integer.parseInt( request.getParameter( "ref" ) ); 
		     re_step= Integer.parseInt( request.getParameter( "re_step" ) );
		     re_level= Integer.parseInt( request.getParameter( "re_level" ) );
	    }
	    
	    request.setAttribute("con_num", con_num );
	    request.setAttribute("ref", ref );
	    request.setAttribute("re_step", re_step );
	    request.setAttribute("re_level", re_level );
	    request.setAttribute("mem_code", mem_code );
	    
	    
	    
		return new ModelAndView("question/questionwriteForm");
	}
}
