package control.servlet.article;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import module.javabean.article.Article;
import module.javabean.article.ArticleMethod;

public class ExamineRetrial extends HttpServlet {

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

		//�����������
		response.setContentType("text/html;charset=utf-8");
		//����������
		request.setCharacterEncoding("utf-8");
		//��Ӧ�������
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>������˿�����</TITLE></HEAD>");
		out.println("<body bgcolor='#e6f1fc'>");
		try {
			int article_id = Integer.parseInt(request.getParameter("xz"));
			Article article = new Article();
			ArticleMethod am = new ArticleMethod();
			article.setArticle_id(article_id);
			am.examineRetrial(article);
			response.addHeader("refresh","0.1;url=\"../admin/article/manage.jsp\"");    
			out.print("����ɹ�,��δ��ת������<a href=../admin/article/manage.jsp>��ת����ǰҳ��</a>");

		out.println("  </BODY>");
		out.println("</HTML>");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}

}
