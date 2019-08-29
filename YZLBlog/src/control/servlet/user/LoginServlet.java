package control.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import module.javabean.user.User;
import module.javabean.user.UserMethod;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//解决中文乱码
		response.setContentType("text/html;charset=utf-8");
		//请求解决乱码
		request.setCharacterEncoding("utf-8");
		//响应解决乱码
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String context = request.getContextPath();
		
		String a = request.getParameter("yhm");
	    String b = request.getParameter("mm");
	    
	    User user = new User();
	    user.setUsername(a);
	    user.setPassword(b);
	    
	    try {
	        UserMethod um = new UserMethod(); 
			um.judgeUser(user);
	        ResultSet rs=null;
	    
	
            rs = um.judgeUser(user);    
            if(rs.next()){
            if(rs.getInt("idcode")==0){
        	  
            //session.setAttribute("bloggername",a);
            request.getSession().setAttribute("bloggername",a);
            response.sendRedirect(context+"/blogger/blogger.jsp");
            }
            else
            {
            //session.setAttribute("myname",a);
        	request.getSession().setAttribute("myname",a);
            out.print(a+",您好!<br><a href="+context+"/user/ApplyBlogger.jsp><font color=red>申请成为博主</font></a>");
            }
          
        }
        else
            out.print("对不起，请先<a href="+context+"/register.jsp>注册</a>!");
	    
	    }
	    catch(Exception e){
	    	e.printStackTrace();
	    }
	    //out.print(a+b);
	    out.flush();
		out.close();
	}

}
