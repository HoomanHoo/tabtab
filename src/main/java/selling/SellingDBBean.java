package selling;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;
import inventory.InventoryDataBean;

public class SellingDBBean implements SellingDao{
	
	private SqlSession session = SqlMapClient.getSession();
	
	public List<InventoryDataBean> getInventory(int mem_code){
		return session.selectList("selling.getInventory", mem_code);
	}

}
