package module.javabean.user;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import conn.Conn;

public class UserMethod {

	public ResultSet judgeUser(User user) throws SQLException{
		
		CallableStatement cs=new Conn().getConn().prepareCall("{call JudgeUser(?,?)}");
		cs.setString(1,user.getUsername());
		cs.setString(2,user.getPassword());		
		ResultSet rs = cs.executeQuery();
		return rs;
	}
	
	
	public List<User> selectAllUser(User user) throws SQLException{
		
		List<User> list = new ArrayList<User>();
		CallableStatement cs=new Conn().getConn().prepareCall("{call SelectAllUsers()}");
		ResultSet rs = cs.executeQuery();
		
		while(rs.next()){
			User user1=new User();
			user1.setId(Integer.parseInt(rs.getString("user_id")));
			user1.setUsername(rs.getString("username"));
			user1.setPassword(rs.getString("password"));
			user1.setIdnumber(rs.getString("idnumber"));
			user1.setContactway(rs.getString("contactway"));
			user1.setEmail(rs.getString("email"));
			user1.setPerferences(rs.getString("perferences"));
			user1.setRegitime(rs.getString("regitime"));
			user1.setImgpath(rs.getString("imgpath"));
			user1.setIdcode(Integer.parseInt(rs.getString("idcode")));
			user1.setApplyid(Integer.parseInt(rs.getString("applyid")));
			list.add(user1);
		}
		return list;
	}
	
	public ResultSet selectUserByName(User user) throws SQLException{
		
		CallableStatement cs=new Conn().getConn().prepareCall("{call SelectUserByName(?)}");
			cs.setString(1,user.getUsername());
			ResultSet rs = cs.executeQuery();
			return rs;
	}
	
	public ResultSet selectUsername() throws SQLException {
		CallableStatement cs=new Conn().getConn().prepareCall("{call SelectAllUsername()}");
		ResultSet rs = cs.executeQuery();
		return rs;
	}
	
	public void insertUser(User user) {	
		
		try {
		CallableStatement cs;
		cs = new Conn().getConn().prepareCall("{call InsertUser(?,?,?,?,?,?,?,?,?)}");
		cs.setString(1,user.getUsername());
		cs.setString(2,user.getPassword());
		cs.setString(3,user.getIdnumber());
		cs.setString(4,user.getContactway());
		cs.setString(5,user.getEmail());
		cs.setString(6,user.getPerferences());
		cs.setString(7,user.getRegitime());
		cs.setInt(8,user.getIdcode());
		cs.setInt(9,user.getApplyid());
        cs.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void delUser(User user) {
		
		try {
		CallableStatement cs;
		cs = new Conn().getConn().prepareCall("{call DeleteUser(?)}");
		cs.setString(1,user.getUsername());
        cs.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateUser(User user){
		
		try {
		CallableStatement cs;
	    cs = new Conn().getConn().prepareCall("{call UpdateUser(?,?,?,?,?,?)}");
		cs.setString(1,user.getUsername());
		cs.setString(2,user.getIdnumber());
		cs.setString(3,user.getContactway());
		cs.setString(4,user.getEmail());
		cs.setString(5,user.getPerferences());
		cs.setInt(6,user.getIdcode());
        cs.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
