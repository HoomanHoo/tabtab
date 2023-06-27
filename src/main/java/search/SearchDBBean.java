package search;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


import handler.SqlMapClient;

public class SearchDBBean implements SearchDao {

    private SqlSession session= SqlMapClient.getSession();
	          
    public int getCountByName(String keyword) {
   		return session.selectOne("Search.getCountByName", keyword);		
    }
      
    public int getCountByIngre(String keyword) {
   		return session.selectOne("Search.getCountByIngre", keyword);		
    }
      
    public List<SearchDataBean> getSearchListByName(Map<String, Object> map){
       	return session.selectList("Search.getSearchListByName", map);
    }
    
    public List<SearchDataBean> getSearchListByIngre(Map<String, Object> map){
       	return session.selectList("Search.getSearchListByIngre", map);
    }
    
   
    
    
}

