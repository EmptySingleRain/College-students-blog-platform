<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'CheckBloggerId.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="admin/css/table.css">


  </head>
  
  <body>
    <jsp:useBean id="check" class="mybean.User"></jsp:useBean>
    <label>审核申请博主的用户</label>
    <!-- 显示申请用户 -->
    
        <form action="admin/blogger/rCheckBloggerId.jsp" method="post">
         <table border="1" class="table">
          <tr><th align="center">用户名</th><th align="center">密码</th><th align="center">身份证号</th><th align="center">手机号</th><th align="center">邮箱</th><th align="center">爱好</th><th align="center">注册日期</th><th align="center">权限</th><th>审核</th></tr>        
        <%
        ResultSet rs = null;
        rs = check.checkBloggerId();
        while(rs.next()){
                    out.print("<tr><td>"+rs.getString("username")+"</td><td>"+rs.getString("password")+"</td><td>"+rs.getString("idnumber")+"</td><td>"+rs.getString("contactway")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("perferences")+"</td><td>"+rs.getString("regitime")+"</td><td>"+rs.getString("idcode")+"</td><td><input type='radio' name='xg' value='"+rs.getString("username")+"'/></td></tr>");
            
          }
        %> 
         <tr><td colspan="9"><input type="submit" value="审核通过"/></td></tr>
         </table>
         </form>
  </body>
</html>
