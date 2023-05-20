package search;

import java.util.List;
import java.util.Map;

public interface SearchDao {
	public int getCount();	
	public List<SearchDataBean> getSearchList(Map<String, Integer>map);	
	public SearchDataBean getSearch(int num);
	public void addCount( int num );
	public SearchDataBean getType(String type);
	public SearchDataBean getKeyword(String keyword);
	public int checkType(String type);
	public int checkSearch( String type, String keyword );	
	public int checkMediname( String keyword, String medi_name );
	public int checkChiefingre( String keyword, String chief_ingre );
}
