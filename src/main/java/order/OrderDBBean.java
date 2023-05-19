package order;


import java.util.Iterator;
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
	
	public int[] getMediCodes(String[] mediNameList) {
		
		int[] mediCodes = new int[mediNameList.length];
		
		for(int i = 0; i < mediNameList.length; i++) {
			String medi_name = mediNameList[i];
			
			int mediCode = session.selectOne("order.getMediCode", medi_name);
			
			mediCodes[i] = mediCode;
		}
		return mediCodes;
	}
	
	public int getOrderNum(int mem_code) {
		
		return session.selectOne("order.getOrderNum", mem_code);
		
	}
	
	public int detailOrder(List<DetailOrderDataBean> detailOrders) {
		
		int result = 0;
		
		Iterator<DetailOrderDataBean> dOrder = detailOrders.iterator();
		while(dOrder.hasNext()) {
			DetailOrderDataBean detailOrder = dOrder.next();
			
			result += session.insert("order.detailOrder", detailOrder);
		}
		
		return result;
	}
	
	
	public int order(OrderDataBean dto) {
		int result = 0;
		
		result = session.insert("order.insertOrder", dto);
		
		int o_num = getOrderNum(dto.getMem_code());
		
		return o_num;
	}
	
	public List<OrderHistoryDataBean> getOrderHistory(){
		
		List<OrderHistoryDataBean> dtos = session.selectList("order.getOrderHistory");
		
		return dtos;
	}

}
