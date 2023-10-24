package handler.admin;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import admin.AdminDao;
import admin.AdminDataBean;
import admin.KakaoInfoToken;
import admin.KakaoLoginToken;
import handler.CommandHandler;
@Controller
public class KakaoLoginHandler implements CommandHandler{
	
	@Resource(name="adminDao")
	AdminDao adminDao; 
	
	@RequestMapping("/kakaologin")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RestTemplate rt = new RestTemplate();
		
		String code = request.getParameter("code");
		
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
		
		params.add("grant_type", "authorization_code");
		params.add("client_id", "f606e759ea53b6313c64aabbf36b8e2d");
		params.add("redirect_uri", "http://localhost:8080/tabtab/kakaologin.net");
		params.add("code", code);
		
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = new HttpEntity<>(params, headers);
		
		ResponseEntity<String> tokenResponse = rt.exchange("https://kauth.kakao.com/oauth/token", HttpMethod.POST, kakaoTokenRequest, String.class);
		

		ObjectMapper objMapper = new ObjectMapper();
		KakaoLoginToken klToken = null;
		
		try {
			klToken = objMapper.readValue(tokenResponse.getBody(), KakaoLoginToken.class);
		}
		catch(JsonMappingException e){
			e.printStackTrace();
		}
		catch(JsonProcessingException e) {
			e.printStackTrace();
		}
		
		RestTemplate rt2 = new RestTemplate();
		
		
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization","Bearer " + klToken.getAccess_token());
		headers2.add("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");

		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest2 = new HttpEntity<>(headers2);
		
		ResponseEntity<String> tokenResponse2 = rt2.exchange("https://kapi.kakao.com/v2/user/me", HttpMethod.POST, kakaoTokenRequest2, String.class);
		
		ObjectMapper objMapper2 = new ObjectMapper();
		KakaoInfoToken kiToken = null;
		
		try {
			kiToken = objMapper.readValue(tokenResponse2.getBody(), KakaoInfoToken.class);
		}
		catch(JsonMappingException e){
			e.printStackTrace();
		}
		catch(JsonProcessingException e) {
			e.printStackTrace();
		}
		Map<String, String> account = (Map<String, String>) kiToken.getKakao_account();
		
		String email = (account.get("email"));
		
		int result = adminDao.checkEmail(email);
		if (result == 0) {
			return new ModelAndView("admin/loginForm");
		}
		else {
			AdminDataBean dto = adminDao.getMember(email);
			int mem_code = dto.getMem_code();
			HttpSession session = request.getSession();
			session.setAttribute("mem_code", mem_code);
			
			return new ModelAndView("warehousing/orderRequest");
		}
	}

}
