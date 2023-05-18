package member;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;

public class MemberDBBean implements MemberDao{

	private static SqlSession session = SqlMapClient.getSession();
	
	public String findPasswd(String name, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("email", email);
		System.out.println(name);
		return session.selectOne("member.findPasswd", map);
	}

}
