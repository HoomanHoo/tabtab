package admin;

import java.util.List;
import java.util.Map;

public interface AdminDao {
	
	public String sendPasswd(String email);
	
	public int deleteT(int mem_code);
	public AdminDataBean checkMC(String email);
	public int check (String email, String password);
	public int insertMember(AdminDataBean dto);
	public int checkEmail( String email);
	public AdminDataBean getMember(String email);
	
	public int insertUser(AdminDataBean dtos);
	//public int selectA(String apply_desc_code);
	/*public int deleteMember(String id);
	public int modifyMember(LogonDataBean dto );*/
	
	public int getCount();
	public List<AdminDataBean> getArticles(Map<String, Integer> map);
	public AdminDataBean selectMember(int mem_code);
}
