<%@ page language="java" import="java.util.*,java.sql.Timestamp" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="admin/css/jquery.hoverclock.css" media="screen" type="text/css" />

  <script type="text/javascript" src="Js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="Js/jquery.hoverclock.js"></script>
  </head>
  
<body>
<jsp:useBean id="formatetime" class="mybean.Article"></jsp:useBean>
<table cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <tr height=28>
    <td background=admin/images/title_bg1.jpg>当前位置: </td></tr>
  <tr>
    <td bgColor=#b1ceef height=1></td></tr>
  <tr height=20>
    <td background=admin/images/shadow_bg.jpg></td></tr></table>
<table cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
  <tr height=100>
    <td align=middle width=100><img height=100 src="admin/images/admin_p.gif" width=90></td>
    <td width=60>&nbsp;</td>
    <td>
      <table height=100 cellSpacing=0 cellPadding=0 width="100%" border=0>
        
        <tr>
          <td>当前时间：计算机系统时间</td></tr>
        <tr>
          <td style="FONT-WEIGHT: bold; FONT-SIZE: 16px;text-transform:capitalize"><%=session.getAttribute("adminname") %></td></tr>
        <tr>
          <td>欢迎进入博客后台管理中心！</td></tr></table></td>
          <td>    
          <div id="hoverclock"></div>
          <script>
          $("#hoverclock").hoverclock({ });
          </script></td>
          </tr>
  <tr>
    <td colSpan=3 height=10></td></tr></table>
<table cellSpacing=0 cellPadding=0 width="95%" align=center border=0>
  <tr height=20>
    <td></td></tr>
  <tr height=22>
    <td style="PADDING-LEFT: 20px; FONT-WEIGHT: bold; COLOR: #ffffff" 
    align=middle background=admin/images/title_bg2.jpg>您的相关信息</td></tr>
  <tr bgColor=#ecf4fc height=12>
    <td></td></tr>
  <tr height=20>
    <td></td></tr></table>
<table cellSpacing=0 cellPadding=2 width="95%" align=center border=0>
  <tr>
    <td align=right width=100>登陆帐号：</td>
    <td style="COLOR: #880000"><%=session.getAttribute("adminname") %></td></tr>
  <tr>
    <td align=right>真实姓名：</td>
    <td style="COLOR: #880000"><%=session.getAttribute("realname") %></td></tr>
  <tr>
    <td align=right>注册时间：</td>
    <td style="COLOR: #880000"><%=session.getAttribute("regitime") %></td></tr>
  <tr>
    <td align=right>登陆次数：</td>
    <td style="COLOR: #880000"><%=session.getAttribute("num_logins") %></td></tr>
  <tr>
    <td align=right>上线时间：</td>
    <td style="COLOR: #880000">  <%=formatetime.format(new Timestamp(System.currentTimeMillis())) %></td></tr>
  <tr>
    <td align=right>IP地址：</td>
    <td style="COLOR: #880000"><%=request.getRemoteAddr() %></td>
    </tr>
  <tr>
    <td align=right>网站开发QQ：</td>
    <td style="COLOR: #880000">231483490</td></tr>
  </table></body>
</html>
