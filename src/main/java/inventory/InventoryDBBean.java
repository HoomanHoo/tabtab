package inventory;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;
import inventory.InventoryDataBean;


public class InventoryDBBean implements InventoryDao {
	
    
    private SqlSession session= SqlMapClient.getSession();
	
    
    public int getCount(int mem_code) {  			
		return session.selectOne("Inventory.getCount", mem_code);
    }
    
    public List<InventoryDataBean> getInventories(int mem_code){
    	return session.selectList("Inventory.getInventories", mem_code);	  
    }

}
