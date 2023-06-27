package order;

import java.sql.Timestamp;

public class OrderHistoryDataBean {

	private Timestamp o_date;
	private int o_num;
	private int sum_order_count;
	private int sum_supply_value;
	private String supplier_name;
	private String memo;
	private String d_code;
	
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}
	
	public Timestamp getO_date() {
		return o_date;
	}
	public void setO_date(Timestamp o_date) {
		this.o_date = o_date;
	}
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	public int getSum_order_count() {
		return sum_order_count;
	}
	public void setSum_order_count(int sum_order_count) {
		this.sum_order_count = sum_order_count;
	}
	public int getSum_supply_value() {
		return sum_supply_value;
	}
	public void setSum_supply_value(int sum_supply_value) {
		this.sum_supply_value = sum_supply_value;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
}
