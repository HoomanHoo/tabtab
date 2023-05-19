package user;

public interface ULogonDao {
	public String findPasswd(String name, String email);
	public int check (String email, String password);
	public int checkEmail( String email);
	public ULogonDataBean getMember(String email);
	
}
