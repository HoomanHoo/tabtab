package admin;

import java.util.List;
import java.util.Map;

public interface AdminDao {
	
	public int check (String email, String password);
	public int insertMember(AdminDataBean dto);
	public int checkEmail( String email);
	public AdminDataBean getMember(String email);
	
	public int updateMember(AdminDataBean dto);
	//public int selectA(String apply_desc_code);
	/*public int deleteMember(String id);
	public int modifyMember(LogonDataBean dto );*/
	
	public int getCount();
	public List<AdminDataBean> getArticles(Map<String, Integer> map);
	public AdminDataBean selectMember(int mem_code);
	
}
