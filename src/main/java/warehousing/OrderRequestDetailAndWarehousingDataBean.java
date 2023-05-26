package warehousing;

public class OrderRequestDetailAndWarehousingDataBean {
	private int o_num;
	private int medi_code;
	private String medi_name;
	private int order_quan;
	private int supply_values;
	private String d_code;
	private int w_num;
	private int dw_quan;
	private int dw_supply_values;
	private String un_delivery_reason;
	
	public int getW_num() {
		return w_num;
	}
	public void setW_num(int w_num) {
		this.w_num = w_num;
	}
	public int getDw_quan() {
		return dw_quan;
	}
	public void setDw_quan(int dw_quan) {
		this.dw_quan = dw_quan;
	}
	public int getDw_supply_values() {
		return dw_supply_values;
	}
	public void setDw_supply_values(int dw_supply_values) {
		this.dw_supply_values = dw_supply_values;
	}
	public String getUn_delivery_reason() {
		return un_delivery_reason;
	}
	public void setUn_delivery_reason(String un_delivery_reason) {
		this.un_delivery_reason = un_delivery_reason;
	}
	
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	public int getMedi_code() {
		return medi_code;
	}
	public void setMedi_code(int medi_code) {
		this.medi_code = medi_code;
	}
	public String getMedi_name() {
		return medi_name;
	}
	public void setMedi_name(String medi_name) {
		this.medi_name = medi_name;
	}
	public int getOrder_quan() {
		return order_quan;
	}
	public void setOrder_quan(int order_quan) {
		this.order_quan = order_quan;
	}
	public int getSupply_values() {
		return supply_values;
	}
	public void setSupply_values(int supply_values) {
		this.supply_values = supply_values;
	}
}
