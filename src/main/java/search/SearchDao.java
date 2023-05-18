package search;

import java.util.List;
import java.util.Map;

public interface SearchDao {
	public int getCount(String keyword);
	public int getSearch(int num);
	public List<SearchDataBean> getSearchList(Map<String, Integer>map);
}
