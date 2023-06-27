package search;


import java.util.List;
import java.util.Map;

public interface SearchDao {

    public int getCountByName(String keyword);
    public int getCountByIngre(String keyword);
    public List<SearchDataBean> getSearchListByName(Map<String, Object>map);
    public List<SearchDataBean> getSearchListByIngre(Map<String, Object>map);
    
	
}
