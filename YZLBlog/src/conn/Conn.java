package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
//����conn����
  public class Conn {
	
	public Connection getConn() throws SQLException{
        String url = "jdbc:sqlserver://localhost:1433; DatabaseName=Blog";
		String username="yzl"; // ���ݿ��¼���û���
		String userpwd="abc6306182"; // ���ݿ��¼������
		Connection conn;		
	    conn = DriverManager.getConnection(url,username,userpwd); 
	    return conn;
	    
	}
//����stmt����
  public Statement getStmt() throws ClassNotFoundException, SQLException{
	    Statement stmt=new Conn().getConn().createStatement();
	    return stmt;  
  }
}
