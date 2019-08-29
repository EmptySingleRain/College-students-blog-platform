<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'platform.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="blog_article/css/backstage_article.css">

  </head>
  
  <body>
   <h1>平台简介</h1>
   <br/>
<p class="p">这是一个基于JSP+JavaBean+servlet技术开发的大学生博客平台，采用Java语言作为主要开发语言，使用MySql或Sql Server数据库保存平台数据。此博客平台预设计总共四大板块，分别是博主版块、审批版块、评论板块和管理员版块。</p>
<br/>
<p class="p">博主板块主要是成为博主的学生可以发表博文、管理博文、查看回复举报评论;</p>
<p class="p">审批版块主要是平台编辑对博主身份的审批、博文的审核、注册用户的管理，以及注册用户评论信息的管理等;</p>
<p class="p">评论板块主要是基于所有用户一个交流的平台，包括学术或者是娱乐等</p>
<p class="p">管理员版块主要是对博主、注册用户的信息的核对、推送平台新闻、做好每日新博文的备份</p>
<br/>
<p class="p">在JavaEE的学习中，由课堂教学的启发，寻思着可以做一个博客平台专门面向大学生群体，因为如今大多数的大学并没有一个比较好的属于学生专属的博客平台，许多爱好文学，热爱分享在学校美好的点滴生活，亦或者是想要传递一些社会正能量的同学们，寻找不到一个合适的平台。同时，有了这个平台之后，可以拉近学校与学校、学生与学生、老师与学生各个群体之间的距离，有利于了解身边的趣闻趣事，丰富校园生活，更加提供了一个方便进行学术探讨和交流，可以互想进取，学长补短的途径。</p>
<br/>
<p class="p">大多数的大学并没有一个属于学生专属的博客平台，这导致许多爱好文学传递正能量的学生基本上都是通过校内的相关小报发表作品，由于小报版面有限，一些较优秀的文章也可能被弃之高阁，无缘面世。所以我们决定设计一个这样的平台，使学生们能够拥有无限的展示空间。同时我们将会认真的审核好上传的内容，只要是没有消极思想的、积极向上的博文，本平台都会审核通过，并将其分享在我们的博客平台上。
本团队所开发的博客平台旨在为在校大学生提供一个轻松和谐的文学环境，以便较好的发挥学生们的文学特长和缓解学生们紧张的学习情绪。并且从大学生的角度看，这将有助于大学生自我成长；其次，从思想政治教育工作者角度看，博客有助于对大学生进行教育。这使得在今后的教学过程中对学生的思想道德建设起到良好的教育作用，利用博客创新高校网络教育。</p>
<p class="p">本项目的创新点是为在校的大学生提供一个发挥个人文学兴趣的平台，学生可以通过该平台进行文学交流，丰富其课后生活，提升其文化道德素养。这个平台也是将德育教育融入学生课后生活的一种方式。</p>
</body>
</html>
