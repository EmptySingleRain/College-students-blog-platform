package mybean;

import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;


import conn.Conn;

public class Article {
	
	public ResultSet selectArticle() throws SQLException{
		
		CallableStatement cs = new Conn().getConn().prepareCall("{call SelectArticle()}");
		ResultSet rs = cs.executeQuery();
		return rs;
	}
	
	public ResultSet selectArticleThoughApply() throws SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call SelectArticleThoughApply()}");
		ResultSet rs = cs.executeQuery();
		return rs;
	}

	public void delArticleById(int article_id) throws SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call DelArticleById(?)}");
		cs.setInt(1,article_id);
        cs.execute();
	}
	
	public void examinePassArticle(int article_id) throws SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call ExaminePassArticle(?)}");
		cs.setInt(1,article_id);
        cs.executeUpdate();
	}
	
	public void examineRejectArticle(int article_id) throws SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call ExamineRejectArticle(?)}");
		cs.setInt(1,article_id);
        cs.executeUpdate();
	}
	

	public ResultSet selectAuthor(int article_id) throws SQLException{

		CallableStatement cs = new Conn().getConn().prepareCall("{call SelectArticleById(?)}");
		cs.setInt(1,article_id);
		ResultSet rs = cs.executeQuery();
		return rs;
	}


	
	public String format(Timestamp timestamp){
		
	     Date date = null;
	     if (timestamp != null)
	     date = new Date(timestamp.getTime());
	     DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String time=df.format(date);
		 return time;
	}
	
	public Map<String, Object> selectArticleById(int article_id) throws SQLException{
		Map<String, Object> map = new HashMap<String, Object>();
		
		CallableStatement cs = new Conn().getConn().prepareCall("{call SelectArticleById(?)}");
		cs.setInt(1,article_id);
		ResultSet rs = cs.executeQuery();
		

	     while(rs.next()){
	     String title = rs.getString("article_title");
	       
	     Date date = null;
	     Timestamp timestamp = rs.getTimestamp("article_time");
	     if (timestamp != null)
	     date = new Date(timestamp.getTime());
	     DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String time=df.format(date);

	     int read = rs.getInt("article_read");
	     String summary = rs.getString("article_summary");
	     String content = rs.getString("article_content");

		map.put("title",title);
		map.put("time",time);
		map.put("read",read);
		map.put("summary",summary);
		map.put("content",content);
	     }
		return map;
	}
	
	public ResultSet selectComment() throws SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call SelectComment()}");
		ResultSet rs = cs.executeQuery();
		return rs;
	}
	
	public ResultSet selectCommentById(int article_id) throws SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call SelectCommentById(?)}");
		cs.setInt(1, article_id);
		ResultSet rs = cs.executeQuery();
		return rs;
	}

}
