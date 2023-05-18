package handler;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapClient {
	private static SqlSession session;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("/handler/sqlMapConfig.xml");
			SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(reader);
			session = factory.openSession(true);
			System.out.println("sql setting...");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	public static SqlSession getSession() {
		return session;
	}
}