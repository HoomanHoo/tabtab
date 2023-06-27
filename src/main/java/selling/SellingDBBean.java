package selling;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;
import inventory.InventoryDataBean;
import order.DetailOrderDataBean;
import order.OrderDataBean;

public class SellingDBBean implements SellingDao{
	
	private SqlSession session = SqlMapClient.getSession();
	
	public List<InventoryDataBean> getInventory(int mem_code){
		return session.selectList("selling.getInventory", mem_code);
	}
	
	public int insertSelling(SellingDataBean dto) {
		session.insert("selling.insertSelling", dto);
		
		int mem_code = dto.getMem_code();
		return session.selectOne("selling.getSnum", mem_code);
	}
	
	public int insertDetailSelling(DetailSellingDataBean dto) {
		return session.insert("selling.insertDetailSelling", dto);
	}
	
	public int updateInventory(DetailSellingDataBean dto) {
		return session.update("selling.updateInventory", dto);
	}
	
	public List<CheckValueDataBean>checkValue(int mem_code){
		return session.selectList("selling.checkValue", mem_code);
	}
	
	public int insertAndGetONum(OrderDataBean dto) {
		session.insert("selling.makeOrder", dto);
		return session.selectOne("order.getOrderNum", dto);
	}
	public int insertDetailOrder(DetailOrderDataBean dto) {
		return session.insert("order.insertDetailOrder", dto);
	}
	public int updateOrder(OrderDataBean dto) {
		return session.update("selling.updateOrder", dto);
	}

}
