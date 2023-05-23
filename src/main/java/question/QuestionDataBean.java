package question;

import java.sql.Timestamp;

public class QuestionDataBean {
	private int con_num;              //글번호	
	private String con_subject;       //글제목
	private String content;           //글내용
	private String passwd;            //비밀번호
	private String p_name;            //작성자
	private Timestamp w_date;         //작성일
    private int v_count;              //조회수
    private String ip;                //아이피
    private int ref;                  //그룹화아이디
    private int re_step;              //글순서
    private int re_level;             //글레벨
    private String re_content;        //답글내용        
    private Timestamp re_write_date;  //답글작성일

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
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public Timestamp getW_date() {
		return w_date;
	}
	public void setW_date(Timestamp w_date) {
		this.w_date = w_date;
	}
	public int getV_count() {
		return v_count;
	}
	public void setV_count(int v_count) {
		this.v_count = v_count;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
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
	public String getRe_content() {
		return re_content;
	}
	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}
	public Timestamp getRe_write_date() {
		return re_write_date;
	}
	public void setRe_write_date(Timestamp re_write_date) {
		this.re_write_date = re_write_date;
	}

}
