package search;

import java.util.List;
import java.util.Map;

public interface SearchDao {
	public int getCount();	
	public default List<SearchDataBean>getSearchList(Map<String, Integer>map) {
		// TODO Auto-generated method stub
		return null;
	}

	public SearchDataBean getSearch(String keyword);
	//public void addCount( int num );
	public SearchDataBean getType(String type);
	
	//public int checkType(String type);
	public int checkSearch( String type, String keyword );	
	public SearchDataBean getKeyword(String keyword);
	public int checkKeyword(String keyword);
	public int checkMediname( String keyword, String medi_name );
	public int checkChiefingre( String keyword, String chief_ingre );
	//public List<SearchDataBean> getSearchList(String keyword, int startRow, int endRow);
	//public List<SearchDataBean>searchByKeyword(String type, String keyword, int start, int count);
	public List<SearchDataBean> getSearchResultBymediname(Map<String, Integer>map);
	public List<SearchDataBean> getSearchResultBychiefingre(Map<String, Integer>map);
}
