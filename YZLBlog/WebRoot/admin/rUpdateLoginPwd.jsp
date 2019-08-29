<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <jsp:useBean id="myadmin" class="mybean.Admin"></jsp:useBean>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rUpdateLoginPwd.jsp' starting page</title>
    
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
          
       <%
       String name=session.getAttribute("adminname").toString();
       String password=request.getParameter("mm");
       myadmin.updateAdminPassword(name,password);
       
       response.addHeader("refresh","5;url=\"updateLoginPwd.jsp\"");    

       out.print(name+",你的密码修改成功，请记住你的新密码："+password+",若5秒未跳转，请点击<a href=admin/updateLoginPwd.jsp>跳转至当前页面</a>");
       %>           
      
  </body>
</html>

