package admin;

import java.sql.Timestamp;

public class AdminDataBean {
	private int mem_code;
	private String name;
	private String email;
	private String password;
	private Timestamp r_date;
	private String mem_desc_code;
	private String supplier_code;
	private String supplier_name;
	private String p_name;
	private String apply_desc_code;
	private String p_address;
	private String pr_num;
	private String pr_img;
	private String pl_img;
	//
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Timestamp getR_date() {
		return r_date;
	}
	public void setR_date(Timestamp r_date) {
		this.r_date = r_date;
	}
	public String getMem_desc_code() {
		return mem_desc_code;
	}
	public void setMem_desc_code(String mem_desc_code) {
		this.mem_desc_code = mem_desc_code;
	}
	public String getSupplier_code() {
		return supplier_code;
	}
	public void setSupplier_code(String supplier_code) {
		this.supplier_code = supplier_code;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getApply_desc_code() {
		return apply_desc_code;
	}
	public void setApply_desc_code(String apply_desc_code) {
		this.apply_desc_code = apply_desc_code;
	}
	public String getP_address() {
		return p_address;
	}
	public void setP_address(String p_address) {
		this.p_address = p_address;
	}
	public String getPr_num() {
		return pr_num;
	}
	public void setPr_num(String pr_num) {
		this.pr_num = pr_num;
	}
	public String getPr_img() {
		return pr_img;
	}
	public void setPr_img(String pr_img) {
		this.pr_img = pr_img;
	}
	public String getPl_img() {
		return pl_img;
	}
	public void setPl_img(String pl_img) {
		this.pl_img = pl_img;
	}
	
}
