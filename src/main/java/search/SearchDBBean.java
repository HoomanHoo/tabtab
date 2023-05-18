package search;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;

public class SearchDBBean implements SearchDao {

    private SqlSession session= SqlMapClient.getSession();
	
    public int getCount(String keyword) {  	
		return session.selectOne("Search.getCount", keyword);
		
    }
    
    public SearchDataBean getSearch(String keyword, Integer num) {	 				
	    return session.selectOne("Search.getSearch", num );
    }
       
    public List<SearchDataBean> getSearchList(Map<String, Integer>map){
    	return session.selectList("Search.getSearchList", map);
    }

	@Override
	public int getSearch(int num) {
		// TODO Auto-generated method stub
		return 0;
	}
    
}
