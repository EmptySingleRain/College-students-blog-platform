package module.javabean.admin;

public class Admin {
	private int id;
	private String name;
	private String password;
	private String realname;
	private String regitime;
	private int num_logins;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getRegitime() {
		return regitime;
	}
	public void setRegitime(String regitime) {
		this.regitime = regitime;
	}
	public int getNum_logins() {
		return num_logins;
	}
	public void setNum_logins(int numLogins) {
		num_logins = numLogins;
	}
	
	
	
}
