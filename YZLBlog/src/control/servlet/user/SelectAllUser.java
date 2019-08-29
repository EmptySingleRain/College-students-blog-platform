package control.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import module.javabean.user.User;
import module.javabean.user.UserMethod;

public class SelectAllUser extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
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
		out
				.println("  <HEAD><TITLE>查询所有用户信息控制器</TITLE><link rel='stylesheet' type='text/css' href='../admin/css/table.css'></HEAD>");
		out.println("  <BODY>");
		out.println("<label>查询所有用户信息</label>");
		out.println("<table border='1' class='table'>");
		out
				.println("<tr><th align='center'>用户名</th><th align='center'>密码</th><th align='center'>身份证号</th><th align='center'>联系方式</th><th align='center'>邮箱</th><th align='center'>爱好</th><th align='center'>注册日期</th><th align='center'>身份类型</th></tr>");
		try {
			String str = null;
			User user = new User();
			UserMethod um = new UserMethod();
			List<User> list;

			list = um.selectAllUser(user);

			for (User user1 : list) {

				if (user1.getIdcode() == 0)
					str = "博主";
				else if (user1.getIdcode() == 1)
					str = "普通用户";
				else
					out.print("请联系管理员！解决这个不可思议的错误！错误返回值:" + user1.getIdcode());

				out.print("<tr><td>" + user1.getUsername() + "</td><td>"
						+ user1.getPassword() + "</td><td>"
						+ user1.getIdnumber() + "</td><td>"
						+ user1.getContactway() + "</td><td>"
						+ user1.getEmail() + "</td><td>"
						+ user1.getPerferences() + "</td><td>"
						+ user1.getRegitime() + "</td><td>" + str
						+ "</td></tr>");
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
