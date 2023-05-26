package warehousing;

public class DetailWarehousingDataBean {
	
	private int w_num;
	private int medi_code;
	private int dw_quan;
	private int dw_supply_values;
	private String un_delivery_reason;
	
	public int getW_num() {
		return w_num;
	}
	public void setW_num(int w_num) {
		this.w_num = w_num;
	}
	public int getMedi_code() {
		return medi_code;
	}
	public void setMedi_code(int medi_code) {
		this.medi_code = medi_code;
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
}
