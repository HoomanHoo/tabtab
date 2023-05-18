package admin;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;

//디디빈 안은 호출만 해줌
public class AdminDBBean implements AdminDao{
	
	private static SqlSession session = SqlMapClient.getSession();	//디비 연결해서 가져오는거

	//회원가입
	/*public int insertMember(AdminDataBean dto) {
		return  session.insert( "Admin.insertMember", dto );
	}
	*/
	 //중복확인
	public int checkEmail( String email) {
		return session.selectOne( "Admin.checkEmail", email);//email>매개변수
	}	
		
	
	//로그인>디비처리 없음 겟 멤버 메소드만 호출하면 됨
	public int check (String email, String password) {
		int result = 0;
		if( checkEmail( email ) != 0 ) {
			//아이디가 있다
			AdminDataBean dto = getMember( email );
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
	//로그인
	public AdminDataBean getMember(String email) {
		return session.selectOne( "Admin.getMember", email);
	}
	/*
	
	public int deleteMember(String id) {
		return session.delete( "Member.deleteMember", id);
	}
	//return template.update( sql, id);
	
	
	*/
	
	/*
	public int modifyMember(LogonDataBean dto ) {
		return session.update( "Member.modifyMember", dto);
	}
	return template.update( sql,
				 			dto.getPasswd(),
				 			dto.getTel(),
				 			dto.getEmail(),
				 			dto.getId()
						);	
	 
	 */
}
