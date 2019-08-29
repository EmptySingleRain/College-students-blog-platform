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

		// �����������
		response.setContentType("text/html;charset=utf-8");
		// ����������
		request.setCharacterEncoding("utf-8");
		// ��Ӧ�������
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
					.println("  <HEAD><TITLE>ͨ��������ѯ�û���Ϣ</TITLE><link rel='stylesheet' type='text/css' href='../admin/css/table.css'></HEAD>");
			out.println("  <BODY>");
			out.println("<table border='1' class='table'>");
			out
					.println("<tr><th align='center'>�û���</th><th align='center'>����</th><th align='center'>���֤��</th><th align='center'>��ϵ��ʽ</th><th align='center'>����</th><th align='center'>����</th><th align='center'>ע������</th><th align='center'>�������</th></tr>");

			while (rs_username.next()) {
				if (rs_username.getString("idcode").equals("0"))
					str = "����";
				else if (rs_username.getString("idcode").equals("1"))
					str = "��ͨ�û�";
				else
					out.print("����ϵ����Ա������������˼��Ĵ��󣡴��󷵻�ֵ:"
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
