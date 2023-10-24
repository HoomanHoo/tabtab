package misc;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;


public interface CheckMember {
	
	public String checkMemberInfo(HttpSession session);

}
