<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int i=0;
int j=0;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rBloggerManage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#e6f1fc">
  <jsp:useBean id="myadmin" class="mybean.Admin"></jsp:useBean>
       <%
        request.setCharacterEncoding("utf-8");
        String username=request.getParameter("xz");
        
        myadmin.delBloggerIfo(username);

        response.addHeader("refresh","5;url=\"BloggerManage.jsp\"");    

        out.print(username+"ԭ���� ���ѳɹ�����Ϊ��ͨ�û�����5��δ��ת������<a href=admin/blogger/BloggerManage.jsp>��ת����ǰҳ��</a>");
        

        %>         
  </body>
</html>
