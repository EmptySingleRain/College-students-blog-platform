package mybean;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import conn.Conn;

public class User {
	
/*	public ResultSet selectAllUser() throws SQLException{
		CallableStatement cs=new Conn().getConn().prepareCall("{call SelectAllUsers()}");
		ResultSet rs = cs.executeQuery();
		return rs;
	}*/
	
	/*public ResultSet judgeUser(String username,String password) throws ClassNotFoundException, SQLException{
		CallableStatement cs=new Conn().getConn().prepareCall("{call JudgeUser(?,?)}");
		cs.setString(1,username);
		cs.setString(2,password);		
		ResultSet rs = cs.executeQuery();
		return rs;
	}*/
	
	/*
	public void insertUser(String username,String password,String idnumber,String contactway,String email,String perferences,String regitime,int idcode,int applyid) {	
		try {
		CallableStatement cs;
		cs = new Conn().getConn().prepareCall("{call InsertUser(?,?,?,?,?,?,?,?,?)}");
		cs.setString(1,username);
		cs.setString(2,password);
		cs.setString(3,idnumber);
		cs.setString(4,contactway);
		cs.setString(5,email);
		cs.setString(6,perferences);
		cs.setString(7,regitime);
		cs.setInt(8,idcode);
		cs.setInt(9,applyid);
        cs.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}*/
	/*
	public void delUser(String name) throws SQLException, ClassNotFoundException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call DeleteUser(?)}");
		cs.setString(1,name);
        cs.execute();
	}
	*/
	/*
	public ResultSet selectUsername() throws SQLException{
		CallableStatement cs=new Conn().getConn().prepareCall("{call SelectAllUsername()}");
		ResultSet rs = cs.executeQuery();
		return rs;
	}
	*/
/*
	public ResultSet selectUser(String name) throws SQLException{
		CallableStatement cs=new Conn().getConn().prepareCall("{call SelectUserByName(?)}");
		cs.setString(1,name);
		ResultSet rs = cs.executeQuery();
		return rs;
	}
*/	
	/*
	public void updateUser(int idcode,String idnumber,String contactway,String email,String perferences,String username) throws ClassNotFoundException, SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call UpdateUser(?,?,?,?,?,?)}");
		cs.setString(1,username);
		cs.setString(2,idnumber);
		cs.setString(3,contactway);
		cs.setString(4,email);
		cs.setString(5,perferences);
		cs.setInt(6,idcode);
        cs.executeUpdate();
	}*/
	/*
	public ResultSet selectAdmin(String name,String password) throws ClassNotFoundException, SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call SelectAdmin(?,?)}");
		cs.setString(1,name);
		cs.setString(2,password);
	    ResultSet rs = cs.executeQuery();
	    return rs;
	}
	*/
	public ResultSet checkBloggerId() throws ClassNotFoundException, SQLException{	    
		CallableStatement cs=new Conn().getConn().prepareCall("{call CheckBloggerId()}");
		ResultSet rs = cs.executeQuery();
		return rs;
	}
	
	public void examineUser(String username) throws ClassNotFoundException, SQLException{
		CallableStatement cs = new Conn().getConn().prepareCall("{call ExamineUser(?)}");
		cs.setString(1,username);
        cs.executeUpdate();
	}
	
	public void updateUserInf(String username,String password,String perferences,String imgpath) throws SQLException{
		CallableStatement cs=new Conn().getConn().prepareCall("{call UpdateUserInf(?,?,?,?)}");
		cs.setString(1,username);
		cs.setString(2,password);
		cs.setString(3,perferences);
		cs.setString(4,imgpath);
		cs.executeUpdate();
	}

}
