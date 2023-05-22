package user;

public interface ULogonDao {
	public String findPasswd(String name, String email);
	public int ucheck (String email, String password);
	public int ucheckEmail( String email);
	public ULogonDataBean ugetMember(String email);
	public int uinsertMember(ULogonDataBean dto);
}
