package conn;

public class LoadDriver {
  public void LoadDriver() throws ClassNotFoundException{
	  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
  }
}
