<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int i=-1;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xgBloggerManage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <jsp:useBean id="myalluser" class="mybean.User"></jsp:useBean>
  
  
  
    <label>�޸Ĳ�����Ϣ</label>
  
      <form action="admin/blogger/rrBloggerManage.jsp" method="post">
        <table border="1" class="table">
          <tr><th>�û���:</th><td><input type="text" name="yhm"/></td><td><input type="button" value="�û������"/></td></tr>
          <tr><th>��&nbsp;&nbsp;&nbsp;��:</th><td colspan="2"><input type="text" name="mm"/></td></tr>
          <tr><th>ȷ������:</th><td colspan="2"><input type="text" name="qrmm"/></td></tr>
          <tr><th>���֤��:</th><td colspan="2"><input type="text" name="sfzh"/></td></tr>
          <tr><th>��ϵ��ʽ:</th><td colspan="2"><input type="text" name="lxfs"/></td></tr>
          <tr><th>E-mail:</th><td colspan="2"><input type="text" name="yx"/></td></tr>
          <tr><th>�û�����:</th><td colspan="2"><a>��ͨ�û�</a><input type="radio" name="yhlx" value="��ͨ�û�"/>  &nbsp;  <a>����</a><input type="radio" name="yhlx" value="����" /></tr>
          <tr><th>��&nbsp;&nbsp;&nbsp;��:</th><td colspan="2"><input type="submit" value="ȷ��" style="margin-right:60px;"/><input type="reset" value="��д"/></td></tr>
        </table>
      </form>
  
       <%
        request.setCharacterEncoding("utf-8");
        
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
        
        myalluser.updateUser(i,c,d,e,f,a);
        
        response.addHeader("refresh","5;url=\"BloggerManage.jsp\"");    

        out.print("�޸ĳɹ�����5��δ��ת������<a href=admin/blogger/BloggerManage.jsp>��ת����ǰҳ��</a>");

        %>         
  </body>
</html>
