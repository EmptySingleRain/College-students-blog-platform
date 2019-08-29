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

public class SubmitArticle extends HttpServlet {

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
		out.println("  <HEAD><TITLE>�ύ���Ŀ�����</TITLE></HEAD>");
		out.println("<body bgcolor='#e6f1fc'>");
		try{
		
		String article_author = request.getSession().getAttribute("bloggername").toString();
		String article_title = request.getParameter("title");
		String article_content = request.getParameter("content");
		String article_summary = request.getParameter("summary");
		
		out.print("������:"+article_author+"������:"+article_title+"����:"+article_content+"��Ҫ:"+article_summary);
		
		
		Article article = new Article();
		ArticleMethod am = new ArticleMethod();
		
		article.setArticle_author(article_author);
		article.setArticle_title(article_title);
		article.setArticle_summary(article_summary);
		article.setArticle_content(article_content);
		
		
		am.submitArticle(article);
		}

		catch(SQLException e){
			e.printStackTrace();
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		response.addHeader("refresh","5;url=\"../blogger/myArticle.jsp\"");    
		out.print("�ύ�ɹ�,��5��δ��ת������<a href=../blogger/myArticle.jsp>��ת����ǰҳ��</a>");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
