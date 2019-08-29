<%@ page language="java" import="java.util.*,java.sql.*,java.text.SimpleDateFormat,java.util.Date" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="admin/css/table.css">

  <script type="text/javascript" src="Js/register.js" charset="gb2312"></script>
  </head>
  
  <body>

  
  <label>添加用户信息</label>
  
      <form name="zhuce" action="servlet/InsertUser" method="post" onsubmit="return checkForma();">
        <table border="1" class="table">
          <tr><th>用户名:</th><td><input type="text" name="yhm"/></td><td><input type="button" value="用户名检测"/></td></tr>
          <tr><th>密&nbsp;&nbsp;&nbsp;码:</th><td colspan="2"><input type="password" name="mm"/></td></tr>
          <tr><th>确认密码:</th><td colspan="2"><input type="password" name="qrmm"/></td></tr>
          <tr><th>身份证号:</th><td colspan="2"><input type="text" name="sfzh"/></td></tr>
          <tr><th>联系方式:</th><td colspan="2"><input type="text" name="lxfs"/></td></tr>
          <tr><th>E-mail:</th><td colspan="2"><input type="text" name="yx"/></td></tr>
          <tr><th>个人喜好:</th><td colspan="2"><textarea name="xh" cols="35" rows="10" style="font-size:13px;background-color:#e6f1fc;border:solid 1px #1c5db6"></textarea></td></tr>
          <tr><th>注册时间:</th><td colspan="2"><input type="date" name="zcsj" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>" style="background-color:#e6f1fc;border:solid 1px #1c5db6"/></td></tr>
          <tr><th>用户类型:</th><td colspan="2"><a>普通用户</a><input type="radio" name="yhlx" value="普通用户" checked="true"/>  &nbsp;  <a>博主</a><input type="radio" name="yhlx" value="博主" /></tr>
          <tr><th>操&nbsp;&nbsp;&nbsp;作:</th><td colspan="2"><input type="submit" value="注册" style="margin-right:60px;"/><input type="reset" value="重写"/></td></tr>
        </table>
      </form>


      </body>
</html>
