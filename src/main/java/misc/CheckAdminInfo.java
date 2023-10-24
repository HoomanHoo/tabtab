package misc;

import javax.servlet.http.HttpSession;

public class CheckAdminInfo implements CheckMember{

	@Override
	public String checkMemberInfo(HttpSession session) {
		
		String memCode = (String) session.getAttribute("mem_code");
		String memDescCode = (String) session.getAttribute("mem_desc_code");
		
		if(memCode == null) {
			return "no_info";
		}
		else {
			if(memDescCode.equals("4")) {
				return "admin";
			}
			else {
				return "not_admin";
			}
		}
	}

}
