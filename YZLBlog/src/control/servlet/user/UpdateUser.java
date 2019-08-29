package control.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import module.javabean.user.User;
import module.javabean.user.UserMethod;

public class UpdateUser extends HttpServlet {

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
		User user = new User();
		UserMethod um = new UserMethod();
		
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>更新用户信息控制器</TITLE></HEAD>");
		out.println("  <BODY bgcolor='#e6f1fc'>");
		
		
		
        String []value = request.getParameterValues("xg");
        
        for (int i = 0; i < value.length; i++) {

        user.setUsername(value[i]);
			um.delUser(user);

        }    
		
		
		
		
		
		
		
		int i=0;
		int j=0;
        String a=request.getParameter("yhm");
        //String b=request.getParameter("mm");
        String c=request.getParameter("sfzh");
        String d=request.getParameter("lxfs");
        String e=request.getParameter("yx");
        String f=request.getParameter("xh");
        
        String g=request.getParameter("zcsj");
        
        String h=request.getParameter("sflx");                       
        
          if(h.equals("博主"))
             i=0;
          else if(h.equals("普通用户"))
             i=1;
          else
             out.print("一个不可思议的错误,以下内容为返回值，如果选择博主则应该为博主，选择普通用户，则应该为普通用户，否则，需要重新调试，返回值:"+h);
        
        user.setUsername(a);
        user.setIdnumber(c);
        user.setContactway(d);
        user.setEmail(e);
        user.setPerferences(f);
        user.setRegitime(g);
        user.setIdcode(i);
        user.setApplyid(j);
        
        um.updateUser(user);


        response.addHeader("refresh","5;url=\"../admin/user/UpdateUser.jsp\"");    

        out.print("修改成功！若5秒未跳转，请点击<a href=../admin/user/UpdateUser.jsp>跳转至当前页面</a>");
		
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
