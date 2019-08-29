<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String str;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查询指定用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="admin/css/table.css">
	
<script language="javascript" type="text/javascript">
         function myFocus(obj,color){

             //判断文本框中的内容是否是默认内容


             if(obj.value=="请输入用户名"){
               obj.value="";
             }

             //设置文本框获取焦点时候背景颜色变换
             obj.style.backgroundColor=color;
         }


         function myblur(obj,color){

             //当鼠标离开时候改变文本框背景颜色
             if(obj.value==""){
               obj.value="请输入用户名";
             }
             obj.style.background=color;
         }
         

         
         function chaxun(myform){
         myform.action="servlet/SelectUsername";
         myform.submit();
         }
         
 </script>
  </head>
  
  <body>
  <jsp:useBean id="myalluser" class="mybean.User"></jsp:useBean>
    <label>查询指定用户信息</label>
  
        <form action="servlet/SelectUserByName" method="post" >
        <table border="1" class="table">
         <tr><th colspan="3">请在下方输入您要查询的用户的用户名</th></tr>
         <tr><td colspan="2"><input type="text" name="username" id="username" onfocus="myFocus(this,'#f4eaf1')" onblur="myblur(this,'#e6f1fc')" value="请输入用户名"/></td><td><input type="submit" value="查询" /></td></tr>

         <tr><th colspan="3">点击按钮，即可查询所有已录入的用户名:<input type="button" name="allusername" id="allusername" value="查询所有用户名" onclick="return chaxun(this.form)"/></th></tr>
          </table>
       </form>    

  </body>
</html>
