 package handler.user;

import java.io.File;
import java.sql.Timestamp;
import java.util.Enumeration;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import handler.CommandHandler;
import user.ULogonDao;
import user.ULogonDataBean;

@Controller
public class UserSignUpProHandler implements CommandHandler{

	@Resource(name="uLogonDao")
	private ULogonDao uLogonDao;
	
	@RequestMapping("/usersignuppro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		ServletContext context = request.getServletContext(); //application 객체를 얻어옴
		String saveFolder = "save";
		String savePath = context.getRealPath(saveFolder);  //저장할 디렉토리
		new File(savePath).mkdir(); //디렉토리 생성
		int uploadFileSizeLimit = 10 * 1024 * 1024; //10MB까지 업로드 허용
		String encType = "UTF-8";
		String requestFolder = request.getContextPath() + "/" + saveFolder; //이미지 불러올 디렉터리
		MultipartRequest multi = new MultipartRequest(
				request, //request 객체
				savePath, //디렉토리
				uploadFileSizeLimit, //최대 업로드 파일 크기
				encType, //인코딩 방법
				new DefaultFileRenamePolicy() //중복되는 이름의 파일의 이름 배정 정책
				);
		String[] fileNames = new String[2];
		int i = 0;
		Enumeration<?> files = multi.getFileNames();
		while(files.hasMoreElements()) {
			
			String file = (String) files.nextElement();
			String file_name = multi.getFilesystemName(file);			
			fileNames[i] = file_name;
			i++;
		}
		String pr_img =  requestFolder + "/" + fileNames[0];
		String pl_img =  requestFolder + "/" + fileNames[1];
		String email = multi.getParameter("email");

		ULogonDataBean dto = new ULogonDataBean();
		dto.setEmail(email);
		dto.setName("default");
		dto.setR_date(new Timestamp(System.currentTimeMillis() ) );
		dto.setPassword ("!00000" );
		dto.setApply_desc_code ("1");
		dto.setPr_img (pr_img);
		dto.setPl_img (pl_img);
		dto.setMem_desc_code("3");
		int result = uLogonDao.uinsertMember(dto); 
		
		request.setAttribute("result", result);	//" ����Ʈ"�� ���� ����Ʈ�̴�>>jsp���� ����Ʈ �޶� �ϴϱ� ��Ƹ� ��
		
		return new ModelAndView("user/signUpPro");
	}

}
