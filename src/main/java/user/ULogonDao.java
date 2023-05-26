package user;

public interface ULogonDao {
	
	public int checkMC(String email);
	public ULogonDataBean selectMy( int mem_code);
	
	public String findPasswd(String name, String email);
	public int ucheck (String email, String password);
	public int ucheckEmail( String email);
	public ULogonDataBean ugetMember(String email);
	public int uinsertMember(ULogonDataBean dto);
}
