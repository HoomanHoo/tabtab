package user;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import admin.AdminDataBean;
import handler.SqlMapClient;

public class ULogonDBBean implements ULogonDao{

	private static SqlSession session = SqlMapClient.getSession();
	
	//��й�ȣ Ȯ��
	public String findPasswd(String name, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("email", email);
		System.out.println(name);
		return session.selectOne("User.findPasswd", map);
	}
	
	//�α���
	public int ucheck (String email, String password) {
		int result = 0;
		if( ucheckEmail( email ) != 0 ) {
			//���̵� �ִ�
			ULogonDataBean dto = ugetMember( email );
			if(password.equals( dto.getPassword() ) ) {
				result = 1;
			}else {
				result = 0;
			}
		}else {
			//���̵� ����
			result = -1;
		}
		return result;
	}
	
	 //�ߺ�Ȯ��
	public int ucheckEmail( String email) {
		return session.selectOne( "User.ucheckEmail", email);//email>�Ű�����
	}

	
	//�α���
	public ULogonDataBean ugetMember(String email) {
		return session.selectOne( "User.ugetMember", email);
	}
	
	//ȸ������
	public int uinsertMember(ULogonDataBean dto) {
		int result1 = session.insert("User.uinsertM",dto);
		int result2 = session.insert("User.uinsertMember", dto);
		return  result2;
	}
}
