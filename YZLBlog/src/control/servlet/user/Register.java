package control.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import module.javabean.user.User;
import module.javabean.user.UserMethod;

public class Register extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

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

		// out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		// out.println("<HTML>");
		// out.println("  <HEAD><TITLE>注册控制器</TITLE><link rel='stylesheet' type='text/css' href='../css/homestyle.css'></HEAD>");
		// out.println("  <BODY>");
		// out.println("<div id='templatemo_container'><jsp:include page='../template/header.html'></jsp:include><div id='templatemo_content_wrapper'><div id='templatemo_content'>");

		// 解决中文乱码
		response.setContentType("text/html;charset=utf-8");
		// 请求解决乱码
		request.setCharacterEncoding("utf-8");
		// 响应解决乱码
		response.setCharacterEncoding("utf-8");

		PrintWriter out = response.getWriter();

		User user = new User();
		UserMethod um = new UserMethod();
		String a = request.getParameter("yhm");
		String b = request.getParameter("mm");
		String c = request.getParameter("sfzh");
		String d = request.getParameter("lxfs");
		String e = request.getParameter("yx");
		String f = request.getParameter("grxh");
		String g = request.getParameter("zcsj");
		int idcode = 1;
		int applyid = 0;
		user.setUsername(a);
		user.setPassword(b);
		user.setIdnumber(c);
		user.setContactway(d);
		user.setEmail(e);
		user.setPerferences(f);
		user.setRegitime(g);
		user.setIdcode(idcode);
		user.setApplyid(applyid);

		um.insertUser(user);

		response.addHeader("refresh", "5;url=\"../index.jsp\"");
		out.print(a + ",恭喜你注册成功！<br>" + "请记住你的用户名:" + a + "     密码:" + b
				+ ",若5秒未跳转，请点击<a href=../index.jsp>跳转至主页面</a>");

		// out.println("</div></div>");

		// RequestDispatcher rd =
		// request.getRequestDispatcher("../template/footer.html");
		// rd.include(request, response);

		// out.println("</div>");
		// out.println("  </BODY>");
		// out.println("</HTML>");

		out.flush();
		out.close();

		/*
		 * request.setCharacterEncoding("utf-8");
		 * response.setContentType("text/html;charset=utf-8");
		 * 
		 * String username = request.getParameter("username");
		 * 
		 * if("test".equals(username)) { response.getWriter().print(true); }
		 * else { response.getWriter().print(false); }
		 */

	}
}
