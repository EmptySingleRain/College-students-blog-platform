<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>精彩博文</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/homestyle.css">
    <link rel="stylesheet" href="blog_article/css/style.css">
  </head>
  
  <body>

  <div id="templatemo_container">
      <!-- 网页头 -->
      <jsp:include page="template/header.html"></jsp:include>
      <div id="templatemo_content_wrapper">
      <div id="templatemo_content">
      <div class="container">
 
    <ul class="docs-nav" id="menu-left">
      <li><strong>最新博文</strong></li>
      <li><a href="latestBlog.jsp#zx1" class=" "><%=session.getAttribute("title1new") %></a></li>
      <li><a href="latestBlog.jsp#zx2" class=" "><%=session.getAttribute("title2new") %></a></li>
      <li><a href="latestBlog.jsp#zx3" class=" ">博文 3</a></li>
      <li><a href="latestBlog.jsp#zx4" class=" ">博文 4</a></li>
      <li class="separator"></li>
      <li><strong>精彩博文</strong></li>
      <li><a href="wonderfulBlog.jsp#jc1" class=" "><%=session.getAttribute("title1won") %></a></li>
      <li><a href="wonderfulBlog.jsp#jc2" class=" ">博文 2</a></li>
      <li><a href="wonderfulBlog.jsp#jc3" class=" ">博文 3</a></li>
      <li><a href="wonderfulBlog.jsp#jc4" class=" ">博文 4</a></li>
      <li><a href="wonderfulBlog.jsp#jc5" class=" ">博文 5</a></li>
      <li><a href="wonderfulBlog.jsp#jc6" class=" ">博文 6</a></li>
      <li><a href="wonderfulBlog.jsp#jc7" class=" ">博文 7</a></li>
    </ul>
    
    
    
    <div class="docs-content">
      <h2>精彩博文</h2>
<div id="blogContainer">  

      <div id="title"><strong><span id="jc1"><%=session.getAttribute("title1won") %></span>&nbsp;</strong><span id="pubTime"><%=session.getAttribute("time1won") %></span>&nbsp;<span id="readNum">阅读(<%=session.getAttribute("read1won") %>)</span>
      
      </div>
      

<div align="center" id="h1"><span id="paperTitle"><%=session.getAttribute("title1won") %></span></div>

<%=session.getAttribute("content1won") %>                   

<div class="comment">
评论[1]
</div>

<textarea name="comment_content" id="comment_content" class="comment_content" rows="20" cols="62"></textarea>
     </div>
     </div>       
     </div>
                
      </div>
      </div> 

             <!-- 网页尾 -->
      <jsp:include page="template/footer.html"></jsp:include>
            </div> 
  </body>
</html>
