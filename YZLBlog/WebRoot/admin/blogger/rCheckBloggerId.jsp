<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rCheckBloggerId.jsp' starting page</title>
    
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
    <jsp:useBean id="check" class="mybean.User"></jsp:useBean>
       <%
        request.setCharacterEncoding("utf-8");
        
        String a=request.getParameter("xg");
        
        check.examineUser(a);
        
        response.addHeader("refresh","5;url=\"CheckBloggerId.jsp\"");    

        out.print("审核成功！若5秒未跳转，请点击<a href=admin/blogger/CheckBloggerId.jsp>跳转至当前页面</a>");

        %>     
  </body>
</html>
