package control.servlet.article;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import module.javabean.article.Article;
import module.javabean.article.ArticleMethod;
import net.sf.json.JSONObject;
/**
 * JSONObject ����һ��JSON����out.write();
 * @author Dana��Li
 */
public class JsonServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }
    @SuppressWarnings({ "rawtypes", "unchecked" })
   /* public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");      //���������������

        PrintWriter out = response.getWriter();
        Map map = new HashMap(); 

        map.put("name", "Dana��Li"); 
        map.put("age", new Integer(22)); 
        map.put("Provinces", new String("�㶫ʡ")); 
        map.put("citiy", new String("�麣��")); 
        map.put("Master", new String("C��C++��Linux��Java"));
        JSONObject json = JSONObject.fromObject(map); 
        
        out.write(json.toString());
        out.flush();
        out.close();
    }*/
    public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//�����������
		response.setContentType("text/html;charset=utf-8");
		//����������
		request.setCharacterEncoding("utf-8");
		//��Ӧ�������
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();

		try {
			int article_id = Integer.parseInt(request.getParameter("xz"));
			Article article = new Article();
			ArticleMethod am = new ArticleMethod();
			article.setArticle_id(article_id);
			
				am.examineRetrial(article);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			Map map = new HashMap(); 
	        map.put("test", "1"); 
	        JSONObject json = JSONObject.fromObject(map); 
	        out.write(json.toString());
	        out.flush();
	        out.close();
	}

}