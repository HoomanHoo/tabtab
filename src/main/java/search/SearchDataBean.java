  package search;

public class SearchDataBean {
    
	private int num;                 //목록번호
	private int medi_code;           //약품번호	
	private String medi_name;        //약품명
	private int supply_value;        //공급가
	private int selling_price;       //판매가
    private String manu_com;         //제조사
    private String chief_ingre;      //주성분
    private int vari_code;           //구분   
    private String keyword;          //검색어
    private String type;             //검색유형
    
    public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}	
    public int getMedi_code() {
		return medi_code;
	}
	public void setMedi_code(int medi_code) {
		this.medi_code = medi_code;
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
	}	
	
}

