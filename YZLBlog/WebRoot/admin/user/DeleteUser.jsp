<%@ page language="java" import="java.util.*,java.sql.*,module.javabean.user.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DeleteUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="admin/css/table.css">

<script language="javascript" type="text/javascript">

/*function fun(myform){
    var boxes = document.getElementsByName("xz");
    for(i=0;i<boxes.length;i++){
        if(boxes[i].checked){
            tr = boxes[i].parentNode.parentNode;
            tr.parentNode.removeChild(tr);
            myform.action="admin/user/rDeleteUser.jsp";
            myform.submit();
        }
    }

}*/

    function delcfm() {
        if (!confirm("确认要删除？")) {
            window.event.returnValue = false;
        }
    }

 </script>

  </head>
  
  <body>
  
  <jsp:useBean id="myUser" class="module.javabean.user.UserMethod"></jsp:useBean>
  
    <label>删除用户信息</label>
   
        <form action="servlet/DeleteUser" method="post">
         <table border="1" id="xz" class="table">
          <tr><th>用户名</th><th>密码</th><th>删除</th></tr>        
        <%
         User user = new User();
         List<User> list = myUser.selectAllUser(user);
         for(User user1:list){
            
         out.print("<tr><td>"+user1.getUsername()+"</td><td>"+user1.getPassword()+"</td><td><input type='checkbox' name='xz' value='"+user1.getUsername()+"'/></td></tr>");
         }
        %> 
          <tr><td  colspan="3"><input type="submit" name="Submit" value="删除用户" style="width:80" onclick="javascript:delcfm()">  
          </td></tr>
         </table>
        </form>
       
        
  </body>
</html>
