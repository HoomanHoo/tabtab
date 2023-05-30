package order;

import java.sql.Timestamp;

public class DeliStateDataBean {
	private int o_num;
	private String d_code;
	private Timestamp d_date;
	
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}
	public Timestamp getD_date() {
		return d_date;
	}
	public void setD_date(Timestamp d_date) {
		this.d_date = d_date;
	}
	
	
}
