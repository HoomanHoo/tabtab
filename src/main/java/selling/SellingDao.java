package selling;

import java.util.List;

import inventory.InventoryDataBean;

public interface SellingDao {
	public List<InventoryDataBean> getInventory(int mem_code);
}
