package search;

import java.sql.Timestamp;
import java.util.Arrays;

public class SearchDataBean {

	private int num;                 //목록번호	
	private String medi_name;        //약품명
	private int supply_value;        //공급가
	private int selling_price;       //판매가
    private String manu_com;         //제조사
    private String chief_ingre;      //주성분
    private int vari_code;           //구분
    private int searchlist;          //검색목록
    private Timestamp reg_date;      //검색일
    private String keyword;          //검색어
    private String type;             //검색타입
    private String[] typeArr;        //검색타입배열   

    
    public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	public String getMedi_name() {
		return medi_name;
	}
	public void setMedi_name(String medi_name) {
		this.medi_name = medi_name;
	}
	public int getSupply_value() {
		return supply_value;
	}
	public void setSupply_value(int supply_value) {
		this.supply_value = supply_value;
	}
	public int getSelling_price() {
		return selling_price;
	}
	public void setSelling_price(int selling_price) {
		this.selling_price = selling_price;
	}
	public String getManu_com() {
		return manu_com;
	}
	public void setManu_com(String manu_com) {
		this.manu_com = manu_com;
	}
	public String getChief_ingre() {
		return chief_ingre;
	}
	public void setChief_ingre(String chief_ingre) {
		this.chief_ingre = chief_ingre;
	}
	public int getVari_code() {
		return vari_code;
	}
	public void setVari_code(int vari_code) {
		this.vari_code = vari_code;
	}
	public int getSearchlist() {
		return searchlist;
	}
	public void setSearchlist(int searchlist) {
		this.searchlist = searchlist;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
		this.typeArr = type.split("");
	}
	public String[] getTypeArr() {
		return type == null? new String[] {}: type.split("");
	}
	public void setTypeArr(String[] typeArr) {
		this.typeArr = typeArr;
	}
		
}

