package order;

import java.sql.Timestamp;

public class OrderDataBean {
	
	private int medi_code;
	private String medi_name;
	private String chief_ingre;
	private int supply_value;

	private int o_num;
	private int mem_code;
	private String supplier_code;
	private Timestamp o_date;
	private String memo;
	private int sum_supply_value;
	private int sum_order_count;
	
	public int getMedi_code() {
		return medi_code;
	}
	public void setMedi_code(int medi_code) {
		this.medi_code = medi_code;
	}
	
	public int getSupply_value() {
		return supply_value;
	}
	public void setSupply_value(int supply_value) {
		this.supply_value = supply_value;
	}

	
	public String getChief_ingre() {
		return chief_ingre;
	}
	public void setChief_ingre(String chief_ingre) {
		this.chief_ingre = chief_ingre;
	}
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public String getSupplier_code() {
		return supplier_code;
	}
	public void setSupplier_code(String supplier_code) {
		this.supplier_code = supplier_code;
	}
	public Timestamp getO_date() {
		return o_date;
	}
	public void setO_date(Timestamp o_date) {
		this.o_date = o_date;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getSum_supply_value() {
		return sum_supply_value;
	}
	public void setSum_supply_value(int sum_supply_value) {
		this.sum_supply_value = sum_supply_value;
	}
	public int getSum_order_count() {
		return sum_order_count;
	}
	public void setSum_order_count(int sum_order_count) {
		this.sum_order_count = sum_order_count;
	}
	public String getMedi_name() {
		return medi_name;
	}
	public void setMedi_name(String medi_name) {
		this.medi_name = medi_name;
	}

}
