package warehousing;

import java.util.List;

import order.DeliStateDataBean;

public interface WarehousingDao {
	
	public int warehousing(WarehousingDataBean dto);
	public int checkInventory(WarehousingDataBean dto);
	public int updateQuan(WarehousingDataBean dto);
	public int insertQuan(WarehousingDataBean dto);
	public int updateDeliState(DeliStateDataBean dto);
	public List<OrderRequestDataBean> getOrderReqList(int mem_code);
	public List<DetailOrderRequestDataBean> getDetailOrderRequest(int o_num);
	public int detailWarehousing(DetailWarehousingDataBean dto);
	public String getDeliveryCode(int o_num);
	public int getOrderNumber(int o_num);
	public List<DetailWarehousingDataBean> getDetailWarehousing(int w_num);

}