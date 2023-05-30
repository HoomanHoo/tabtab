package selling;

import java.util.List;

import inventory.InventoryDataBean;
import order.DetailOrderDataBean;
import order.OrderDataBean;

public interface SellingDao {
	public List<InventoryDataBean> getInventory(int mem_code);
	public int insertSelling(SellingDataBean dto);
	public int insertDetailSelling(DetailSellingDataBean dto);
	public int updateInventory(DetailSellingDataBean dto);
	public List<CheckValueDataBean>checkValue(int mem_code);
	public int insertAndGetONum(OrderDataBean dto);
	public int insertDetailOrder(DetailOrderDataBean dto);
	public int updateOrder(OrderDataBean dto);
}
