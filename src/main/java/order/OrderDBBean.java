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
	
	public int[] getMediCodes(String[] mediNames) {
		
		int[] mediCodes = new int[mediNames.length];
		
		for(int i = 0; i < mediNames.length; i++) {
			String medi_name = mediNames[i];
			int mediCode = session.selectOne("order.getMediCode", medi_name);
			mediCodes[i] = mediCode;
		}
		return mediCodes;
	}
	
	public int getOrderNum(int mem_code) {
		return session.selectOne("order.getOrderNum", mem_code);
	}

	public int order(OrderDataBean dto) {
		int result = 0;
		result = session.insert("order.insertOrder", dto);
		int o_num = getOrderNum(dto.getMem_code());
		session.insert("order.insertDeliCode", o_num);
		return o_num;
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
	
	public List<OrderHistoryDataBean> getOrderHistory(int mem_code){
		List<OrderHistoryDataBean> dtos = session.selectList("order.getOrderHistory", mem_code);
		return dtos;
	}
	
	public List<DetailOrderHistoryDataBean> getDetailOrderHistory(int o_num){
		List<DetailOrderHistoryDataBean> dtos 
			= session.selectList("order.getDetailOrderHistory", o_num);
		return dtos;
		
	}
	
	public List<SimpleInvenDataBean> getSimpleInven(int mem_code){
		return session.selectList("order.getSimpleInven", mem_code);
	}
	

}
