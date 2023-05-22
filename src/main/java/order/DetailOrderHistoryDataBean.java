package order;

public class DetailOrderHistoryDataBean {
	private int o_num;
	private String medi_name;
	private int order_quan;
	private int each_supply_value;
	private String vari_code;
	private int medi_code;

	public int getMedi_code() {
		return medi_code;
	}
	public void setMedi_code(int medi_code) {
		this.medi_code = medi_code;
	}
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
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
	public int getEach_supply_value() {
		return each_supply_value;
	}
	public void setEach_supply_value(int each_supply_value) {
		this.each_supply_value = each_supply_value;
	}
	public String getVari_code() {
		return vari_code;
	}
	public void setVari_code(String vari_code) {
		this.vari_code = vari_code;
	}
	
	
}
