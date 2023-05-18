package search;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;

public class SearchDBBean implements SearchDao {

	private static SqlSession session= SqlMapClient.getSession();
	
    public int getCount() {  	
		
		return 0;//session.selectOne("Search.getCount");
    }
    
}
