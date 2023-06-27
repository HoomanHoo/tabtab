package user;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import admin.AdminDataBean;
import handler.SqlMapClient;

public class ULogonDBBean implements ULogonDao{

	private static SqlSession session = SqlMapClient.getSession();
	
	//delete
	public int deleteT(int mem_code) {
		int result1 = session.delete("User.deleteO", mem_code);
		int result2 = session.delete("User.deleteT", mem_code);
		return result2;
		
	}
	
	//update
	public int updateMy( ULogonDataBean dto) {
		int result1 = session.update("User.updateP",dto);
		int result2 = session.update("User.updateMy", dto);
		return  result2;
	}
	
	//session
	public ULogonDataBean checkMC(String email) {
		return session.selectOne("User.checkMC", email);
				
	}
	//selectMy
	public ULogonDataBean selectMy(int mem_code) {
		ULogonDataBean result = session.selectOne("User.selectMy", mem_code);
		return  result;
				
	}
	
	//findpasswd
	public String findPasswd(String name, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("email", email);
		return session.selectOne("User.findPasswd", map);
	}
	
	//로그인 
	public int ucheck (String email, String password) {
		int result = 0;
		if( ucheckEmail( email ) != 0 ) {
			//아이디가 있다
			ULogonDataBean dto = ugetMember( email );
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
	public int ucheckEmail( String email) {
		return session.selectOne( "User.ucheckEmail", email);//email>매개변수
	}

	
	//로그인
	public ULogonDataBean ugetMember(String email) {
		return session.selectOne( "User.ugetMember", email);
	}
	
	//회원가입
	public int uinsertMember(ULogonDataBean dto) {
		int result1 = session.insert("User.uinsertM",dto);
		String email = dto.getEmail();
		int mem_code = session.selectOne("User.getMemCode", email);
		dto.setMem_code(mem_code);
		int result2 = session.insert("User.uinsertMember", dto);
		return  result2;
	}
}
