package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
//创建conn对象
  public class Conn {
	
	public Connection getConn() throws SQLException{
        String url = "jdbc:sqlserver://localhost:1433; DatabaseName=Blog";
		String username="yzl"; // 数据库登录的用户名
		String userpwd="abc6306182"; // 数据库登录的密码
		Connection conn;		
	    conn = DriverManager.getConnection(url,username,userpwd); 
	    return conn;
	    
	}
//创建stmt对象
  public Statement getStmt() throws ClassNotFoundException, SQLException{
	    Statement stmt=new Conn().getConn().createStatement();
	    return stmt;  
  }
}
