package warehousing;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;
import inventory.InventoryDataBean;
import order.DeliStateDataBean;


public class WarehousingDBBean implements WarehousingDao{

	private SqlSession session = SqlMapClient.getSession();
	
	public int warehousing(WarehousingDataBean dto) {
		session.insert("warehousing.warehousing", dto);
		int w_num = session.selectOne("warehousing.getWarehousingNumber", dto);
		return w_num;
	}
	
	public int detailWarehousing(DetailWarehousingDataBean dto) {
		return session.insert("warehousing.detailWarehousing", dto);
	}
	
	public int checkInventory(InventoryDataBean dto) {
		return session.selectOne("warehousing.checkInventory", dto);
	}
	
	public int updateQuan(InventoryDataBean dto) {
		return session.update("warehousing.updateQuan", dto);
	}
	
	public int insertQuan(InventoryDataBean dto) {
		return session.insert("warehousing.insertQuan", dto);
	}
	public int updateDeliState(DeliStateDataBean dto) {
		return session.update("order.updateDeliState", dto);
	}
	
	public List<OrderRequestDataBean> getOrderReqList(int mem_code){
		return session.selectList("warehousing.getOrderRequest", mem_code);
	}
	
	public List<DetailOrderRequestDataBean> getDetailOrderRequest(int o_num){
		
		return session.selectList("warehousing.getDetailOrderRequest", o_num);
	}
	
	public String getDeliveryCode(int o_num) {
		
		return session.selectOne("order.getDeliveryCode", o_num);
	}
	
	public int getOrderNumber(int o_num) {
		return session.selectOne("warehousing.getOrderNumber", o_num);
	}
	
	public List<DetailWarehousingDataBean> getDetailWarehousing(int w_num){
		return session.selectList("warehousing.getOrderNumber", w_num);
	}
	public List<OrderRequestDetailAndWarehousingDataBean>getOrderRequestAndWarehousingDetail(int o_num){
		return session.selectList("warehousing.getOrderRequestAndWarehousingDetail", o_num);
	}
}
