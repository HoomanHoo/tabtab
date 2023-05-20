package search;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import search.SearchDataBean;
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
    
    public SearchDataBean getSearch(int num)  {	 				
	    return session.selectOne("Search.getSearch",num );
    }
    
    public void addCount( int num ) {    			
        session.update("Search.addCount", num);
    }
    
    public SearchDataBean getType(String type) {
    	return session.selectOne( "Search.getType", type);
    }
    
    public SearchDataBean getKeyword(String keyword) {
    	return session.selectOne( "Search.getKeyword", keyword);
    }
    
    public int checkType(String type) {
    	return session.selectOne("Search.checkSearch", type);
    }
	
    public int checkSearch( String type, String keyword ) {    	   	
	    	int result = 0;
		    if( checkType(type) !=0 ) {
		         //검색종류가 있다
		    	int typevalue= Integer.parseInt(type);
		    	SearchDataBean dto= getType(type);
		    	if( type.equals( dto.getType() ) ) {
		    	    result= 1;	
		    	}else {
		    		result= 0;
		    	}
		    }else {
		    	//검색종류가 없다
		    	result= -1;
		    }    	    	    			
	       return result;
	    }  			
	
	public int checkMediname( String keyword, String medi_name ) {
    	int result = 0;
    	SearchDataBean dto= getKeyword( medi_name );
    	if( medi_name.equals( dto.getMedi_name() ) ) {
    		//약품명이 같다
    		result = 1;
    	} else {
    		//약품명이 다르다
    		result = 0;
    	}
    	return result;    	
    }
	
	public int checkChiefingre( String keyword, String chief_ingre ) {
    	int result = 0;
    	SearchDataBean dto= getKeyword( chief_ingre );
    	if( chief_ingre.equals( dto.getChief_ingre() ) ) {
    		//주성분이 같다
    		result = 1;
    	} else {
    		//주성분이 다르다
    		result = 0;
    	}
    	return result;    	
    }               
}
