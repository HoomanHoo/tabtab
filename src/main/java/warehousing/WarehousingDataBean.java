package warehousing;

import java.sql.Timestamp;

public class WarehousingDataBean {
	
	private int w_num;
	private int o_num;
	private int mem_code;
	private int supply_values;
	private int warehousing_quans;
	private Timestamp w_date;
	
	
	
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	public int getSupply_values() {
		return supply_values;
	}
	public void setSupply_values(int supply_values) {
		this.supply_values = supply_values;
	}
	public int getWarehousing_quans() {
		return warehousing_quans;
	}
	public void setWarehousing_quans(int warehousing_quans) {
		this.warehousing_quans = warehousing_quans;
	}
	public Timestamp getW_date() {
		return w_date;
	}
	public void setW_date(Timestamp w_date) {
		this.w_date = w_date;
	}
	public int getW_num() {
		return w_num;
	}
	public void setW_num(int w_num) {
		this.w_num = w_num;
	}
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}

	
	

}
