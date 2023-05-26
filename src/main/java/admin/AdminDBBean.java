package admin;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;

//디디빈 안은 호출만 해줌
public class AdminDBBean implements AdminDao{
	
	public static SqlSession session = SqlMapClient.getSession();	//디비 연결해서 가져오는거

	//session
	public int checkMC( String email) {
		return  session.selectOne("Admin.checkMC", email);
	}

	
	//회원가입
	public int insertMember(AdminDataBean dto) {
		int result1 = session.insert("Admin.insertM",dto);
		int result2 = session.insert("Admin.insertMember", dto);
		return  result2;
	}
	
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
	
	//관리자>유저회원가입
	public int updateMember(AdminDataBean dto) {
		int result1 = session.update("Admin.updatePI",dto);
		int result2 = session.update("Admin.updateIDI", dto);
		return  result2;
	}
	/*
	public int selectA(String apply_desc_code) {
		return session.selectOne( "Admin.selectA", apply_desc_code);
	}
	
	
	
	
	public int deleteMember(String id) {
		return session.delete( "Member.deleteMember", id);
	}
	
	
	public int modifyMember(LogonDataBean dto ) {
		return session.update( "Member.modifyMember", dto);
	}
						);	
	 
	 */
	
	public int getCount() {//이름이 안정해져 있음 숫자로 꺼냄?
		return session.selectOne( "Admin.getCount" );
	}
	
	public List<AdminDataBean> getArticles(Map<String, Integer> map) {
		return session.selectList( "Admin.getArticles", map);
	}
	
	public AdminDataBean  selectMember(int mem_code) {
		return session.selectOne( "Admin.selectMember", mem_code);
	} 
/**/

	
	
	/*public int modifyArticle( BoardDataBean dto ) {	//이 공간에서 에러나는지 수정후 리스트로 가지 않고 500에러 어디가 오타인걸까~~~~~~
		return session.update( "Board.modifyArticle", dto);
		
		
		public int deleteArticle( int num ) {
		BoardDataBean dto = getArticle( num);
		int ref = dto.getRef();
		int re_step = dto.getRe_step();
		int re_level = dto.getRe_level();
		
		int replyCount = session.selectOne( "Board.reply", dto);
		
		int result = 0;
		if(replyCount != 0 ) {
			//답글이 있다
			result = -1;
		} else  {
			//답글이 없다
			//숫자 땡기는거>스탭을 하나씩 빼줘야 답글이있는애는 삭제 안함 
			session.update( "Board.deleteReply", dto );
			result = session.delete( "Board.deleteArticle", num);
		}
		return result;
	}
	
	public int check(int num, String passwd ) {
		int result = 0;
		BoardDataBean dto = getArticle( num );
		if( passwd.equals(dto.getPasswd() ) ) {
			//비밀번호가 같다
			result = 1;
		} else {
			// 비밀번호가 다르다
			result = 0;
		}
		return result;
	}
		
	public int insertArticle( BoardDataBean dto) {
	
		int num = dto.getNum();					//제목글 0 / 답변글 ! 0
		int ref = dto.getRef();					//그룹화아이디
		int re_step = dto.getRe_step();			//글순서
		int re_level = dto.getRe_level();		//글레벨
		
		String sql = null;
		if( num == 0) {
			//제목글인 경우
			if(getCount() != 0) {
				//글이 있는 경우
				//ref= 			//그룹화 아이디 = 글번호 최대값 + 1 
				ref = ( (Integer) session.selectOne("Board.maxNum") ) +1;
			}else {
				//글이 없는 경우	>최초글이니까 1번으로 시작
				ref = 1;
			}
			re_step = 0;
			re_level = 0;
		} else {
			//답변글인 경우
			session.update( "Board.insertReply", dto );
			re_step ++;
			re_level ++;		
		}
		dto.setRef( ref );
		dto.setRe_step( re_step );
		dto.setRe_level(re_level);
		return session.insert( "Board.insertArticle", dto);
	*/
}
