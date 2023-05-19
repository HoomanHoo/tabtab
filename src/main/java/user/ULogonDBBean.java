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
		return session.selectOne("user.findPasswd", map);
	}
	
	//�α���
	public int check (String email, String password) {
		int result = 0;
		if( checkEmail( email ) != 0 ) {
			//���̵� �ִ�
			ULogonDataBean dto = getMember( email );
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
	public int checkEmail( String email) {
		return session.selectOne( "User.checkEmail", email);//email>�Ű�����
	}
	
	//�α���
	public ULogonDataBean getMember(String email) {
		return session.selectOne( "User.getMember", email);
	}

}
