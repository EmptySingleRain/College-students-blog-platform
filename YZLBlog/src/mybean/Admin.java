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

public class Admin {
	public void updateAdminPassword(String name,String password) throws SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call UpdateAdminPassword(?,?)}");
		cs.setString(1,name);
		cs.setString(2,password);
        cs.executeUpdate();
	}
	
	public ResultSet bloggerManage() throws SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call BloggerManage()}");
		ResultSet rs = cs.executeQuery();
		return rs;
	}
	
	public void delBloggerIfo(String username) throws SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call DelBloggerIfo(?)}");
		cs.setString(1,username);
        cs.executeUpdate();
	}
	

	
}
