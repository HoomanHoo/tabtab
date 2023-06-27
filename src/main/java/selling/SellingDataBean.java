package selling;

import java.sql.Timestamp;

public class SellingDataBean {
	private int mem_code;
	private Timestamp s_date;
	private int selling_quans;
	private int selling_prices;
	
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public Timestamp getS_date() {
		return s_date;
	}
	public void setS_date(Timestamp s_date) {
		this.s_date = s_date;
	}
	public int getSelling_quans() {
		return selling_quans;
	}
	public void setSelling_quans(int selling_quans) {
		this.selling_quans = selling_quans;
	}
	public int getSelling_prices() {
		return selling_prices;
	}
	public void setSelling_prices(int selling_prices) {
		this.selling_prices = selling_prices;
	}
}
