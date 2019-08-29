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

		//解决中文乱码
		response.setContentType("text/html;charset=utf-8");
		//请求解决乱码
		request.setCharacterEncoding("utf-8");
		//响应解决乱码
		response.setCharacterEncoding("utf-8");

		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>提交博文控制器</TITLE></HEAD>");
		out.println("<body bgcolor='#e6f1fc'>");
		try{
		
		String article_author = request.getSession().getAttribute("bloggername").toString();
		String article_title = request.getParameter("title");
		String article_content = request.getParameter("content");
		String article_summary = request.getParameter("summary");
		
		out.print("作者名:"+article_author+"标题名:"+article_title+"内容:"+article_content+"概要:"+article_summary);
		
		
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
		out.print("提交成功,若5秒未跳转，请点击<a href=../blogger/myArticle.jsp>跳转至当前页面</a>");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
