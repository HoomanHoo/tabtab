package order;

public class DetailOrderDataBean {
	
	private int do_number;
	private int o_num;
	private int medi_code;
	private int order_quan;
	private int supply_values;
	
	public int getSupply_values() {
		return supply_values;
	}
	public void setSupply_values(int supply_values) {
		this.supply_values = supply_values;
	}
	private String memo;
	
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getDo_number() {
		return do_number;
	}
	public void setDo_number(int do_number) {
		this.do_number = do_number;
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
	public int getOrder_quan() {
		return order_quan;
	}
	public void setOrder_quan(int order_quan) {
		this.order_quan = order_quan;
	}

}
