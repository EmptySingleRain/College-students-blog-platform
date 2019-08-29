<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rPersonalInfo.jsp' starting page</title>
    
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
  <jsp:useBean id="myuser" class="mybean.User"></jsp:useBean>
<%
String name=session.getAttribute("bloggername").toString();
String mm=request.getParameter("mm");
String grxh=request.getParameter("grxh");
String imgpath="uploadimg/"+session.getAttribute("imageName");
myuser.updateUserInf(name,mm,grxh,imgpath);

response.addHeader("refresh","5;url=\"personalInfo.jsp\"");    

out.print(session.getAttribute("bloggername")+",您好！信息修改完毕！若5秒未跳转，请点击<a href=blogger/personalInfo.jsp>跳转至当前页面</a>");

 %>
  </body>
</html>
