package control.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import module.javabean.user.User;
import module.javabean.user.UserMethod;

public class SelectUserByName extends HttpServlet {

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
		try {
			User user = new User();
			UserMethod um = new UserMethod();
			String str = null;
			String myname = request.getParameter("username");
			user.setUsername(myname);
			ResultSet rs_username;

			rs_username = um.selectUserByName(user);

			out
					.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
			out.println("<HTML>");
			out
					.println("  <HEAD><TITLE>通过姓名查询用户信息</TITLE><link rel='stylesheet' type='text/css' href='../admin/css/table.css'></HEAD>");
			out.println("  <BODY>");
			out.println("<table border='1' class='table'>");
			out
					.println("<tr><th align='center'>用户名</th><th align='center'>密码</th><th align='center'>身份证号</th><th align='center'>联系方式</th><th align='center'>邮箱</th><th align='center'>爱好</th><th align='center'>注册日期</th><th align='center'>身份类型</th></tr>");

			while (rs_username.next()) {
				if (rs_username.getString("idcode").equals("0"))
					str = "博主";
				else if (rs_username.getString("idcode").equals("1"))
					str = "普通用户";
				else
					out.print("请联系管理员！解决这个不可思议的错误！错误返回值:"
							+ rs_username.getString("idcode"));

				out.print("<tr><td>" + rs_username.getString("username")
						+ "</td><td>" + rs_username.getString("password")
						+ "</td><td>" + rs_username.getString("idnumber")
						+ "</td><td>" + rs_username.getString("contactway")
						+ "</td><td>" + rs_username.getString("email")
						+ "</td><td>" + rs_username.getString("perferences")
						+ "</td><td>" + rs_username.getString("regitime")
						+ "</td><td>" + str + "</td></tr>");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		out.println("</table>");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
