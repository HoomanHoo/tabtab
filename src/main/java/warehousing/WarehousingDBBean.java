package warehousing;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;
import order.DeliStateDataBean;


public class WarehousingDBBean implements WarehousingDao{

	private SqlSession session = SqlMapClient.getSession();
	
	public int warehousing(WarehousingDataBean dto) {
		return session.insert("warehousing.warehousing", dto);
	}
	
	public int checkInventory(WarehousingDataBean dto) {
		return session.selectOne("warehousing.checkInventory", dto);
	}
	
	public int updateQuan(WarehousingDataBean dto) {
		return session.update("warehousing.updateQuan", dto);
	}
	
	public int insertQuan(WarehousingDataBean dto) {
		return session.insert("warehousing.insertQuan", dto);
	}
	public int updateDeliState(DeliStateDataBean dto) {
		return session.update("warehousing.updateDeliState", dto);
	}
	
	public List<OrderRequestDataBean> getOrderReqList(int mem_code){
		return session.selectList("warehousing.getOrderRequest", mem_code);
	}
	
	public List<DetailOrderRequestDataBean> getDetailOrderRequest(int o_num){
		return session.selectList("warehousing.getDetailOrderRequest", o_num);
	}
}
