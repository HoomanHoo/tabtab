package handler.img;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import handler.CommandHandler;

@Controller
public class UploadHandler implements CommandHandler{

	@RequestMapping("/userupload")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
/*
		String path = application.getRealPath( "/save" );
		//서버에 저장하는 경로
		new File( path ).mkdir();
		MultipartRequest multi
			= new MultipartRequest( request, path, 1024*1024*5, "utf-8", new DefaultFileRenamePolicy()  );
		
		
		*/
		return new ModelAndView("user/signUpForm");
	}

	
}


