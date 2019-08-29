<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人博客</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/homestyle.css">

  </head>
  
  <body>
      <div id="templatemo_container">
      <!-- 网页头 -->
      <jsp:include page="template/header.html"></jsp:include>
      <div id="templatemo_content_wrapper">
      <div id="templatemo_content">
                 请先登录 <br>
      </div>
      </div> 
      <!-- 网页尾 -->
      <jsp:include page="template/footer.html"></jsp:include>
      </div> 
  </body>
</html>
