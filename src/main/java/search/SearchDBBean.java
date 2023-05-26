package search;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import handler.SqlMapClient;
import search.SearchDBBean;


public class SearchDBBean implements SearchDao {

    private SqlSession session= SqlMapClient.getSession();
	          
    public int getCount() {  	
		return session.selectOne("Search.getCount");		
    }
    
   
    public List<SearchDataBean> getSearchList(Map<String, Integer>map){
    	return session.selectList("Search.getSearchList", map);
    }
    
    public SearchDataBean getSearch(String keyword)  {	 				
	    return session.selectOne("Search.getSearch", keyword);
    }
    
    
    public SearchDataBean getType(String type) {
    	return session.selectOne("Search.getType", type);
    }
    
    public int checkSearch(String type) {
    	return session.selectOne("Search.checkSearch", type);
    }
    
    /*
    public SearchDataBean getType(String type) {
    	return session.selectOne( "Search.getType", type);
    }
    
    public SearchDataBean getKeyword(String keyword) {
    	return session.selectOne( "Search.getKeyword", keyword);
    }
    
    public int checkType(String type) {
    	return session.selectOne("Search.checkSearch", type);
    }
    */
	
    
    public int checkSearch( String type, String keyword ) {    	   	
	    	int result = 0;
		    if( checkSearch(type) !=0 ) {
		         //�˻� ������ �ִ�
		    	//int typevalue= Integer.parseInt(type);
		    	SearchDataBean dto= getType(type);
		    	if( type.equals( dto.getSearch() ) ) {
		    	    result= 1;	
		    	}else {
		    		result= 0;
		    	}
		    }else {
		    	//�˻� ������ ���ٸ�
		    	result= -1;
		    }    	    	    			
	       return result;
	    }  			
	
    public SearchDataBean getKeyword(String keyword) {
    	return session.selectOne( "Search.getKeyword", keyword);
    }
    
    public int checkKeyword(String keyword) {
    	return session.selectOne("Search.checkKeyword", keyword);
    }
    
    public int checkMediname( String keyword, String medi_name ) {
    	int result = 0;
    	SearchDataBean dto= getSearch( medi_name );
    	if( medi_name.equals( dto.getKeyword() ) ) {
    		//��ǰ���� ����
    		result = 1;
    	} else {
    		//��ǰ���� �ٸ���
    		result = 0;
    	}
    	return result;    	
    }
	
	public int checkChiefingre( String keyword, String chief_ingre ) {
    	int result = 0;
    	SearchDataBean dto= getSearch( chief_ingre );
    	if( chief_ingre.equals( dto.getKeyword() ) ) {
    		//�ּ����� ����
    		result = 1;
    	} else {
    		//�ּ����� �ٸ���
    		result = 0;
    	}
    	return result;    	
    }

	public static SearchDBBean getInstance() {
		// TODO Auto-generated method stub
		return null;
	}	          

	public List<SearchDataBean> getSearchResultBymediname(Map<String, Integer>map){
		return session.selectList("Search.getSearchList", map);
	}
	
	public List<SearchDataBean> getSearchResultBychiefingre(Map<String, Integer>map){
		return session.selectList("Search.getSearchList", map);
	}
	
}
