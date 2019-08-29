<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int i=-1;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xgBloggerManage.jsp' starting page</title>
    
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
  <jsp:useBean id="myalluser" class="mybean.User"></jsp:useBean>
  
  
  
    <label>修改博主信息</label>
  
      <form action="admin/blogger/rrBloggerManage.jsp" method="post">
        <table border="1" class="table">
          <tr><th>用户名:</th><td><input type="text" name="yhm"/></td><td><input type="button" value="用户名检测"/></td></tr>
          <tr><th>密&nbsp;&nbsp;&nbsp;码:</th><td colspan="2"><input type="text" name="mm"/></td></tr>
          <tr><th>确认密码:</th><td colspan="2"><input type="text" name="qrmm"/></td></tr>
          <tr><th>身份证号:</th><td colspan="2"><input type="text" name="sfzh"/></td></tr>
          <tr><th>联系方式:</th><td colspan="2"><input type="text" name="lxfs"/></td></tr>
          <tr><th>E-mail:</th><td colspan="2"><input type="text" name="yx"/></td></tr>
          <tr><th>用户类型:</th><td colspan="2"><a>普通用户</a><input type="radio" name="yhlx" value="普通用户"/>  &nbsp;  <a>博主</a><input type="radio" name="yhlx" value="博主" /></tr>
          <tr><th>操&nbsp;&nbsp;&nbsp;作:</th><td colspan="2"><input type="submit" value="确认" style="margin-right:60px;"/><input type="reset" value="重写"/></td></tr>
        </table>
      </form>
  
       <%
        request.setCharacterEncoding("utf-8");
        
        String a=request.getParameter("yhm");
        //String b=request.getParameter("mm");
        
        String c=request.getParameter("sfzh");
        String d=request.getParameter("lxfs");
        String e=request.getParameter("yx");
        String f=request.getParameter("xh");
        
        String g=request.getParameter("zcsj");
        
        String h=request.getParameter("sflx");                       
        
          if(h.equals("博主"))
             i=0;
          else if(h.equals("普通用户"))
             i=1;
          else
             out.print("一个不可思议的错误,以下内容为返回值，如果选择博主则应该为博主，选择普通用户，则应该为普通用户，否则，需要重新调试，返回值:"+h);
        
        myalluser.updateUser(i,c,d,e,f,a);
        
        response.addHeader("refresh","5;url=\"BloggerManage.jsp\"");    

        out.print("修改成功！若5秒未跳转，请点击<a href=admin/blogger/BloggerManage.jsp>跳转至当前页面</a>");

        %>         
  </body>
</html>
