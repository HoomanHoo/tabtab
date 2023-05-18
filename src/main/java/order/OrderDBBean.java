package order;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;

public class OrderDBBean implements OrderDao{

	private static SqlSession session = SqlMapClient.getSession();
	
	public int checkId(int mem_code) {

		return session.selectOne("order.checkId", mem_code);
	}
	
	public List<OrderDataBean> mediList(){
		
		
		return session.selectList("order.mediList");
	}

}
