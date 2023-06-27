package warehousing;

import java.util.List;

import inventory.InventoryDataBean;
import order.DeliStateDataBean;

public interface WarehousingDao {
	
	public int warehousing(WarehousingDataBean dto);
	public int checkInventory(InventoryDataBean dto);
	public int updateQuan(InventoryDataBean dto);
	public int insertQuan(InventoryDataBean dto);
	public int updateDeliState(DeliStateDataBean dto);
	public List<OrderRequestDataBean> getOrderReqList();
	public List<DetailOrderRequestDataBean> getDetailOrderRequest(int o_num);
	public int detailWarehousing(DetailWarehousingDataBean dto);
	public String getDeliveryCode(int o_num);
	public int getOrderNumber(int o_num);
	public List<DetailWarehousingDataBean> getDetailWarehousing(int w_num);
	public List<OrderRequestDetailAndWarehousingDataBean>getOrderRequestAndWarehousingDetail(int o_num);
	public int getMemCode(int o_num);
}
