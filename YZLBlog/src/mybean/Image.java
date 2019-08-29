package mybean;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.Conn;

public class Image {
	
	public ResultSet myUserImage(String username) throws SQLException{
		CallableStatement cs=new Conn().getConn().prepareCall("{call GetUserImage(?)}");
		cs.setString(1,username);
		ResultSet rs = cs.executeQuery();
		return rs;
	}
	
	public void myUserImage(String username,String imgpath) throws SQLException{
		CallableStatement cs=new Conn().getConn().prepareCall("{call SetUserImage(?)}");
		cs.setString(1,username);
		cs.setString(2,imgpath);
		cs.executeUpdate();
	}
	

}
