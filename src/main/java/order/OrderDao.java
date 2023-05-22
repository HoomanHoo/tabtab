package order;

import java.util.List;

public interface OrderDao {
	
	public int checkId(int mem_code);
	public List<OrderDataBean> mediList();
	public int[] getMediCodes(String[] mediNameList);
	public int getOrderNum(int mem_code);
	public int order(OrderDataBean dto);
	public int detailOrder(List<DetailOrderDataBean> detailOrders);
	public List<OrderHistoryDataBean> getOrderHistory(int mem_code);
	public List<DetailOrderHistoryDataBean> getDetailOrderHistory(int o_num);
	public List<SimpleInvenDataBean> getSimpleInven(int mem_code);
	public int warehousing(WarehousingDataBean dto);
}
