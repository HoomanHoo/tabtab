package inventory;

import java.util.List;
import java.util.Map;

public interface InventoryDao {
	public int getCount();
	public List<InventoryDataBean> getInventories( Map<String, Integer>map );
	public InventoryDataBean getInventory( int num );
    public void addCount( int num );
    public int getMem_code( int num );
    public int checkMem_code( int num, int mem_code);
}
