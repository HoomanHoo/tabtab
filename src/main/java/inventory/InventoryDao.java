package inventory;

import java.util.List;
import java.util.Map;

public interface InventoryDao {
	
	public int getCount(int mem_code);
	public List<InventoryDataBean> getInventories( int mem_code );	
	
}
