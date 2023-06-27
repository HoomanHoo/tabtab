package question;

import java.util.List;
import java.util.Map;

public interface QuestionDao {

	public int getCount();
	public int getMem_code();
	public int getMem_desc_code();
	public int insertArticle( QuestionDataBean dto );
	public List<QuestionDataBean> getArticles( Map<String, Integer>map );
	public QuestionDataBean getArticle( int con_num );	
	
	public int deleteArticle( int con_num );
	public int modifyArticle( QuestionDataBean dto );

}

