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

		// �����������
		response.setContentType("text/html;charset=utf-8");
		// ����������
		request.setCharacterEncoding("utf-8");
		// ��Ӧ�������
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out
				.println("  <HEAD><TITLE>��ѯ�����û���Ϣ������</TITLE><link rel='stylesheet' type='text/css' href='../admin/css/table.css'></HEAD>");
		out.println("  <BODY>");
		out.println("<label>��ѯ�����û���Ϣ</label>");
		out.println("<table border='1' class='table'>");
		out
				.println("<tr><th align='center'>�û���</th><th align='center'>����</th><th align='center'>���֤��</th><th align='center'>��ϵ��ʽ</th><th align='center'>����</th><th align='center'>����</th><th align='center'>ע������</th><th align='center'>�������</th></tr>");
		try {
			String str = null;
			User user = new User();
			UserMethod um = new UserMethod();
			List<User> list;

			list = um.selectAllUser(user);

			for (User user1 : list) {

				if (user1.getIdcode() == 0)
					str = "����";
				else if (user1.getIdcode() == 1)
					str = "��ͨ�û�";
				else
					out.print("����ϵ����Ա������������˼��Ĵ��󣡴��󷵻�ֵ:" + user1.getIdcode());

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
