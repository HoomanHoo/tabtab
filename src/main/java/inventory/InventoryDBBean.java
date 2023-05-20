package inventory;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;
import inventory.InventoryDataBean;


public class InventoryDBBean implements InventoryDao {
	
    
    private SqlSession session= SqlMapClient.getSession();
	
    public int getCount() {  			
		return session.selectOne("Inventroy.getCount");
    }
         
    public List<InventoryDataBean> getInventories( Map<String, Integer>map ){
			
			return session.selectList("Inventory.getInventory", map);	  
    }
    	
    public InventoryDataBean getInventory( int num ) {   				
			return session.selectOne("Inventory.getInventory", num );
    }
       
    public void addCount( int num ) {    			
         session.update("inventory.addCount", num);
    }
    
    public int getMem_code( int num ) {
    	return session.selectOne("Invetntory.getMem_code", num);
    }
    
    public int checkMem_code( int num, int mem_code) {
    	int result = 0;
    	InventoryDataBean dto= getInventory( num );
    	if( mem_code == dto.getMem_code()) {
    		//회원번호가 같다
    		result = 1;
    	} else {
    		//회원번호가 다르다
    		result = 0;
    	}
    	return result;    	
    }   	   
	
}
