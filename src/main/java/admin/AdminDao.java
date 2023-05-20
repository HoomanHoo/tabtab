package admin;

public interface AdminDao {
	
	public int check (String email, String password);
	public int insertMember(AdminDataBean dto);
	public int checkEmail( String email);
	public AdminDataBean getMember(String email);
	/*public int deleteMember(String id);
	public int modifyMember(LogonDataBean dto );*/
}
