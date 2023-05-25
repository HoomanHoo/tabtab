package question;

import java.sql.Timestamp;

public class QuestionDataBean {
	private int con_num;              //�۹�ȣ	
	private String con_subject;       //������
	private String content;           //�۳���	
	private String name;            //�ۼ���
	private Timestamp w_date;         //�ۼ���       
    private int ref;                  //�׷�ȭ���̵�
    private int re_step;              //�ۼ���
    private int re_level;             //�۷���
    private int mem_code;             //회원번호
    private int mem_desc_code;        //계정구분
    
    public int getCon_num() {
		return con_num;
	}
	public void setCon_num(int con_num) {
		this.con_num = con_num;
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
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getW_date() {
		return w_date;
	}
	public void setW_date(Timestamp w_date) {
		this.w_date = w_date;
	}
	
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRe_step() {
		return re_step;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
	
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	
	public int getMem_desc_code() {
		return mem_desc_code;
	}
	public void setMem_desc_code(int mem_desc_code) {
		this.mem_desc_code = mem_desc_code;
	}
}
