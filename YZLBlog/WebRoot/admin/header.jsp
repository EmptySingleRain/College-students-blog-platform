<%@ page language="java" import="java.util.*,java.sql.Timestamp" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script type="text/javascript">
//获取系统时间
function showTime() {
nowtime = new Date();
year = nowtime.getFullYear();//年
month = nowtime.getMonth() + 1;//月
day = nowtime.getDate();//日
hour = nowtime.getHours();//时
minutes = nowtime.getMinutes(); //分
seconds = nowtime.getSeconds(); //秒
//文字增加空格
document.getElementById("div_timer").style = "white-space:pre;font-size:20px;";
//显示时间
document.getElementById("div_timer").innerText = year + "." + p(month) + "." + p(day) + " " + p(hour) + ":" + p(minutes) + ":" + p(seconds);
}
setInterval("showTime()", 1000);
//月日时分秒小于10补0
function p(s) {
return s < 10 ? '0' + s : s;
}
</script>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="admin/css/admin.css">


  </head>
  
  <body>
  <jsp:useBean id="formatetime" class="mybean.Article"></jsp:useBean>
<TABLE cellSpacing=0 cellPadding=0 width="100%" 
background="admin/images/header_bg.jpg" border=0>
  <TR height=56>
    <TD width=260>
    <a href="admin/main.jsp" target=main>
    <img src="admin/images/header_left.jpg" height=55 width=260/>
    </a>
    </TD>
    
    <TD style="FONT-WEIGHT: bold; COLOR: #fff; PADDING-TOP: 20px;text-transform:capitalize" <%//转换大小写，capiyalize首字母大写 %>
      align=middle>当前用户：<%=session.getAttribute("adminname") %> &nbsp;&nbsp; <A style="COLOR: #fff" 
      href="admin/updateLoginPwd.jsp" target=main>修改口令</A> &nbsp;&nbsp; <A style="COLOR: #fff" 
      onclick="if (confirm('确定要退出吗？')) return true; else return false;" 
      href="admin/logout.jsp" target=__blank>退出系统</A> 
    </TD>
 
      <TD align=center width=268 background="admin/images/header_right.png" height=56 width=268>
        <div id="div_timer" style="font-size:20px;" >实时时间</div>    
      </TD>
      </TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TR bgColor=#1c5db6 height=4>
    <TD></TD></TR></TABLE>
  </body>
</html>
