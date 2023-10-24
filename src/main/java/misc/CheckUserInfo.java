package misc;

import javax.servlet.http.HttpSession;

public class CheckUserInfo implements CheckMember {
	
	@Override
	public String checkMemberInfo(HttpSession session) {

		String memCode = (String) session.getAttribute("mem_code");
		String memDescCode = (String) session.getAttribute("mem_desc_code");
		if(memCode == null) {
			return "no_info";
		}
		else {
			if(memDescCode.equals("3")) {
				return "user";
			}
			else {
				return "not_user";
			}
		}
		
	}

}
