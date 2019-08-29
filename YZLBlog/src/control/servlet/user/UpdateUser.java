package control.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import module.javabean.user.User;
import module.javabean.user.UserMethod;

public class UpdateUser extends HttpServlet {

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
		User user = new User();
		UserMethod um = new UserMethod();
		
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>�����û���Ϣ������</TITLE></HEAD>");
		out.println("  <BODY bgcolor='#e6f1fc'>");
		
		
		
        String []value = request.getParameterValues("xg");
        
        for (int i = 0; i < value.length; i++) {

        user.setUsername(value[i]);
			um.delUser(user);

        }    
		
		
		
		
		
		
		
		int i=0;
		int j=0;
        String a=request.getParameter("yhm");
        //String b=request.getParameter("mm");
        String c=request.getParameter("sfzh");
        String d=request.getParameter("lxfs");
        String e=request.getParameter("yx");
        String f=request.getParameter("xh");
        
        String g=request.getParameter("zcsj");
        
        String h=request.getParameter("sflx");                       
        
          if(h.equals("����"))
             i=0;
          else if(h.equals("��ͨ�û�"))
             i=1;
          else
             out.print("һ������˼��Ĵ���,��������Ϊ����ֵ�����ѡ������Ӧ��Ϊ������ѡ����ͨ�û�����Ӧ��Ϊ��ͨ�û���������Ҫ���µ��ԣ�����ֵ:"+h);
        
        user.setUsername(a);
        user.setIdnumber(c);
        user.setContactway(d);
        user.setEmail(e);
        user.setPerferences(f);
        user.setRegitime(g);
        user.setIdcode(i);
        user.setApplyid(j);
        
        um.updateUser(user);


        response.addHeader("refresh","5;url=\"../admin/user/UpdateUser.jsp\"");    

        out.print("�޸ĳɹ�����5��δ��ת������<a href=../admin/user/UpdateUser.jsp>��ת����ǰҳ��</a>");
		
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
