package module.javabean.article;

import java.sql.CallableStatement;
import java.sql.SQLException;
import conn.Conn;

public class ArticleMethod {

	public void submitArticle(Article article) throws ClassNotFoundException, SQLException{
		
		CallableStatement cs=new Conn().getConn().prepareCall("{call SubmitArticle(?,?,?,?)}");
		
		/*
		cs.setString(1,"h");
		cs.setString(2,"h");
		cs.setString(3,"h");
		cs.setString(4,article.getArticle_content());
		*/
		
		
		cs.setString(1,article.getArticle_author());
		cs.setString(2,article.getArticle_title());
		cs.setString(3,article.getArticle_summary());
		cs.setString(4,article.getArticle_content());

		cs.executeUpdate();
	}
	
	public void examineRetrial(Article article) throws SQLException{
		CallableStatement cs=new Conn().getConn().prepareCall("{call ExamineRetrial(?)}");
		cs.setInt(1, article.getArticle_id());
		cs.executeUpdate();
	}
	
	/*
	public ResultSet judgeUser(User user) throws ClassNotFoundException, SQLException{
		
		CallableStatement cs=new Conn().getConn().prepareCall("{call JudgeUser(?,?)}");
		cs.setString(1,user.getUsername());
		cs.setString(2,user.getPassword());		
		ResultSet rs = cs.executeQuery();
		return rs;
	}
	*/
	/*
	public List<User> selectAllUser(User user) throws SQLException{
		
		List<User> list = new ArrayList<User>();
		CallableStatement cs=new Conn().getConn().prepareCall("{call SelectAllUsers()}");
		ResultSet rs = cs.executeQuery();
		
		while(rs.next()){
			User user1=new User();
			user1.setUsername(rs.getString("username"));
			user1.setPassword(rs.getString("password"));
			list.add(user1);
		}
		return list;
	}*/
	
}
