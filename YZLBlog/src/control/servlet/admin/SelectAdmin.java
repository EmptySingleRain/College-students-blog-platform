package control.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import module.javabean.admin.Admin;
import module.javabean.admin.AdminMethod;
import conn.LoadDriver;

public class SelectAdmin extends HttpServlet {

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

		// 解决中文乱码
		response.setContentType("text/html;charset=utf-8");
		// 请求解决乱码
		request.setCharacterEncoding("utf-8");
		// 响应解决乱码
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>查询管理员控制器</TITLE></HEAD>");
		out.println("  <BODY bgcolor='#e6f1fc'>");

		try {
			LoadDriver mydriver = new LoadDriver();
			Admin admin = new Admin();
			AdminMethod am = new AdminMethod();

			mydriver.LoadDriver();

			ResultSet rs = null;
			String a = request.getParameter("yhm").trim();
			String b = request.getParameter("kl");

			admin.setName(a);
			admin.setPassword(b);
			rs = am.selectAdmin(admin);

			if (rs.next()) {
				am.increaseNumLogins(admin);
				request.getSession().setAttribute("adminname",
						rs.getString("name"));
				request.getSession().setAttribute("realname",
						rs.getString("realname"));
				request.getSession().setAttribute("regitime",
						rs.getString("regitime"));

				request.getSession().setAttribute("num_logins",
						rs.getInt("num_logins") + 1);
				response.sendRedirect("../admin/index.htm");

			} else
				response.addHeader("refresh",
						"5;url=\"../admin/adminLogin.jsp\"");

			out
					.print("用户名或密码不正确，请重新输入！ 若5秒未跳转，请点击<a href=../admin/adminLogin.jsp>跳转至当前页面</a>");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
