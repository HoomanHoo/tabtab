package question;

import java.util.List;
import java.util.Map;

public interface QuestionDao {

	public int getCount();
	public int insertArticle( QuestionDataBean dto );
	public List<QuestionDataBean> getArticles( Map<String, Integer>map );
	public QuestionDataBean getArticle( int con_num );
	public void addCount( int con_num );
	public int check( int con_num, String passwd );
	public int deleteArticle( int con_num );
	public int modifyArticle( QuestionDataBean dto );

}

