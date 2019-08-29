<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<style type="text/css">
body{
	font-family:Arial, Helvetica, sans-serif;
	font-size:12px;
	margin:0px;
	padding:0px;
	text-align:center;			/* 居中且宽度固定的版式，参考11.2节 */
	background-color:#000000;
}
#container{
	position:relative;
	margin:1px auto 0px auto;
	width:760px;
	text-align:left;
	background-color:#FFFFFF;
	border-left:1px dashed #AAAAAA;		/* 添加虚线框 */
	border-right:1px dashed #AAAAAA;
}
#globallink{
	width:760px; height:163px;	/* 设置块的尺寸，高度大于banner图片 */
	margin:0px; padding:0px;
	/* 再设置背景颜色，作为导航菜单的背景色 */
	background: #daeeff url(blogger/images/banner.jpg) no-repeat top;
	font-size:12px;
}
#globallink ul{
    list-style-type:none;
	position:absolute;			/* 绝对定位 */
	width:417px;
	left:400px; top:145px;		/* 具体位置 */
	padding:0px; margin:0px;
}
#globallink li{
	float:left; 
	text-align:center;
	padding:0px 6px 0px 6px;	/* 链接之间的距离 */
}
#globallink a:link, #globallink a:visited{
	color:#004a87;
	text-decoration:none;
}
#globallink a:hover{
	color:#FFFFFF;
	text-decoration:underline;
}

#parameter{
	position:relative;
	float:left;
	width:210px;
	padding:0px;
	margin:0px;
}
#parameter div#author{
	text-align:center;
	background:url(blogger/images/mypic_bg.gif) no-repeat;		/* 设置一个背景图片 */
	margin-top:5px;
}
div#author p{
	margin:0px 10px 0px 10px;
	padding:3px 0px 3px 0px;
	border-bottom:1px dashed #999999;
	border-top:1px dashed #999999;
}
div#author p.mypic{
	border:none;
	padding:15px 0px 0px 0px;
	margin:0px 0px 8px 0px;
}
div#author p.mypic img{
	border:1px solid #444444;
	padding:2px; margin:0px;
}
#parameter div{
	clear:both;
	margin-top:25px;
	position:relative;
}
#parameter div h4{					/* 统一设置 */
	background:url(blogger/images/leftbg.jpg) no-repeat;
	font-size:12px;
	padding: 6px 0px 5px 27px;
	margin:0px;
}
#parameter div ul{
	list-style:none;
	margin:5px 15px 0px 15px;
	padding:0px;
}
#parameter div ul li{
	padding:2px 3px 2px 15px;
	background:url(blogger/images/icon1.gif) no-repeat 8px 7px;
	border-bottom:1px dashed #999999;		/* 虚线作为下划线 */
}
#parameter br{
	display:none;
}
#parameter div ul li a:link, #parameter div ul li a:visited{
	color:#000000;
	text-decoration:none;
}
#parameter div ul li a:hover{
	color:#008cff;
	text-decoration:underline;
}
div#llinks ul{		/* 单独设置该项目列表 */
	list-style:none;
	padding:0px;
	margin:5px 5px 0px 25px;
}
div#llinks ul li{
	float:left;		/* 显示为同一行 */
	width:80px;		/* 指定每一项的宽度 */
	background:none;
	padding:0px;
	border:none;
}
div#lcategory{
	position:relative;
	top:10px;
	margin-bottom:35px;
}

#main{
	float:left;
	position:relative;
	font-size:12px;
	margin:0px 20px 5px 20px;
	width:510px;
}
#main div{
	position:relative;
	margin:20px 0px 30px 0px;
}
#main div h3{
	font-size:15px;
	margin:0px;
	padding:0px 0px 3px 0px;
	border-bottom:1px dotted #999999;			/* 下划淡色虚线 */
}
#main div h3 a:link, #main div h3 a:visited{
	color:#662900;
	text-decoration:none;
}
#main div h3 a:hover{
	color:#0072ff;
}
#main p.author{
	margin:0px;
	text-align:right;
	color:#888888;
	padding:2px 5px 2px 0px;
}
#main p.content{
	margin:0px;
	padding:10px 0px 10px 0px;
}
#footer{
	clear:both;			/* 消除float的影响，排版相关的章节已经大量涉及 */
	text-align:center;
	background-color:#daeeff;
	margin:0px; padding:0px;
	color:#004a87;
}
#footer p{
	margin:0px; padding:2px;
}
</style>

  </head>
  
  <body>
  <div id="container">
	<div id="globallink">
		<ul style="top: 143px; left: 316px; width: 547px; height: 77px;">
			<li><a href="blogger/blogger.jsp">个人首页</a></li>
			<li><a href="blogger/personalInfo.jsp">个人信息</a></li>
			<li><a href="blogger/myArticle.jsp">我的文章</a></li>
			<li><a href="blogger/blogger.jsp">我的相册</a></li>
			<li><a href="blogger/blogger.jsp">我的圈子</a></li>
			<li><a href="blogger/comment.jsp">给我留言</a></li>
			<li><a href="blogger/loginout.jsp">注销登录</a></li>
			
		</ul>
		<br>
	</div>
</div>
  </body>
</html>
