package module.javabean.admin;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.Conn;

public class AdminMethod {
	
	public ResultSet selectAdmin(Admin admin) throws SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call SelectAdmin(?,?)}");
		cs.setString(1,admin.getName());
		cs.setString(2,admin.getPassword());
	    ResultSet rs = cs.executeQuery();
	    return rs;
	}
	
	public void increaseNumLogins(Admin admin) {
		CallableStatement cs;
		try {
			cs = new Conn().getConn().prepareCall("{call IncreaseNumLoginsByName(?)}");
			cs.setString(1,admin.getName());
			cs.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				}
			}
	}
