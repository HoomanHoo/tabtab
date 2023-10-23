package question;

import java.sql.Timestamp;

public class QuestionDataBean {
	private int con_num;			//	
    private int mem_code;			// 회원번호
	private String con_subject;		//
	private String content;			//	
	private Timestamp w_date;		//       
    private int content_group;				//
    private int content_procedure;			//
    private int content_level;			//  
    
    private	String	name;			// 
    private String	mem_desc_code;	// 계정구분
    
    
	public int getCon_num() {
		return con_num;
	}
	public void setCon_num(int con_num) {
		this.con_num = con_num;
	}
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public String getCon_subject() {
		return con_subject;
	}
	public void setCon_subject(String con_subject) {
		this.con_subject = con_subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getW_date() {
		return w_date;
	}
	public void setW_date(Timestamp w_date) {
		this.w_date = w_date;
	}
	public int getContent_group() {
		return content_group;
	}
	public void setContent_group(int content_group) {
		this.content_group = content_group;
	}
	public int getContent_procedure() {
		return content_procedure;
	}
	public void setContent_procedure(int content_procedure) {
		this.content_procedure = content_procedure;
	}
	public int getContent_level() {
		return content_level;
	}
	public void setContent_level(int content_level) {
		this.content_level = content_level;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMem_desc_code() {
		return mem_desc_code;
	}
	public void setMem_desc_code(String mem_desc_code) {
		this.mem_desc_code = mem_desc_code;
	}
    
}
