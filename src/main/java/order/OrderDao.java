package order;

import java.util.List;

public interface OrderDao {
	
	public int checkId(int mem_code);
	public List<OrderDataBean> mediList();
}
