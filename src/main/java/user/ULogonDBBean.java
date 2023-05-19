package user;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import admin.AdminDataBean;
import handler.SqlMapClient;

public class ULogonDBBean implements ULogonDao{

	private static SqlSession session = SqlMapClient.getSession();
	
	//비밀번호 확인
	public String findPasswd(String name, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("email", email);
		System.out.println(name);
		return session.selectOne("user.findPasswd", map);
	}
	
	//로그인
	public int check (String email, String password) {
		int result = 0;
		if( checkEmail( email ) != 0 ) {
			//아이디가 있다
			ULogonDataBean dto = getMember( email );
			if(password.equals( dto.getPassword() ) ) {
				result = 1;
			}else {
				result = 0;
			}
		}else {
			//아이디가 없다
			result = -1;
		}
		return result;
	}
	
	 //중복확인
	public int checkEmail( String email) {
		return session.selectOne( "User.checkEmail", email);//email>매개변수
	}
	
	//로그인
	public ULogonDataBean getMember(String email) {
		return session.selectOne( "User.getMember", email);
	}

}
