package warehousing;

public class DetailOrderRequestDataBean {
	private int o_num;
	private int medi_code;
	private String medi_name;
	private int order_quan;
	private int supply_values;
	private String d_code;
	
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
