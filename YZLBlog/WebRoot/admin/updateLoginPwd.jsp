<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateLoginPwd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="admin/css/table.css">


  </head>
  
  <body>
 <form action="admin/rUpdateLoginPwd.jsp" method="post">
    <label>管理员口令修改</label> <br>
    <table width="291" height="111" border="1" class="table">
          <tr><td>用户名:</td><td><input type="text" name="yhm" value="<%=session.getAttribute("adminname") %>"disabled/></td></tr>
          <tr><td>密 &nbsp;码:</td><td><input type="text" name="mm"/></td></tr>
          <tr><td></td><td>&nbsp; <input type="submit" value="修改密码"/></td></tr>
        </table>
 </form>
  </body>
</html>
