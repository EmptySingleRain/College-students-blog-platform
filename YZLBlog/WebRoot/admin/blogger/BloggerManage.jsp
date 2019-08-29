<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String str = null;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'BloggerManage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="<%=path%>/admin/css/table.css">
	
	<script language="javascript" type="text/javascript">
	
    function delcfm() {
        if (!confirm("确认要降级？降级后，并不会删除所有信息，\n而是使其降为普通用户，如需删除用户信息，请进入用户管理进行操作!")) {
            window.event.returnValue = false;
        }
    }
    
        function xiugai(myform){
         alert("此功能暂未实现，有待斟酌必要性");
         //myform.action="admin/user/rBloggerManage.jsp";
         //myform.submit();
         }

 </script>

  </head>
  
 <body>

<!--  这是提示框的插件
<div id="alert1">底部提示框</div>
<div id="alert2">遮罩层提示框</div>
<div id="alert3">
<label>123</label>
</div>
-->
    <jsp:useBean id="myadmin" class="mybean.Admin"></jsp:useBean>
    <label>博主管理页面</label>
    <!-- 显示申请用户 -->
    
        <form action="rBloggerManage.jsp" method="post">
         <table border="1" class="table">
          <tr><th align="center">用户名</th><th align="center">密码</th><th align="center">身份证号</th><th align="center">手机号</th><th align="center">邮箱</th><th align="center">爱好</th><th align="center">注册日期</th><th align="center">权限</th><th>选择</th></tr>        

        <%
        ResultSet rs = myadmin.bloggerManage();
        
        while(rs.next()){
            
            if(rs.getString("idcode").equals("0"))
            str = "博主";
            else if(rs.getString("idcode").equals("1"))
            str = "普通用户";
            else
            out.print("请联系管理员！解决这个不可思议的错误！错误返回值:"+rs.getString("idcode"));
        
            out.print("<tr><td>"+rs.getString("username")+"</td><td>"+rs.getString("password")+"</td><td>"+rs.getString("idnumber")+"</td><td>"+rs.getString("contactway")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("perferences")+"</td><td>"+rs.getString("regitime")+"</td><td>"+str+"</td><td><input type='radio' name='xz' value='"+rs.getString("username")+"'/></td></tr>");
          }
        %> 

         <tr><td colspan="9"><label style="padding-right:60px;"><input type="button" name="xgbzxx" value="修改" onclick="return xiugai(this.form)"/></label><label style="padding-right:60px;"><input type="submit" value="降级" onclick="javascript:delcfm()"/></label></td></tr>
         </table>
         </form>
<!-- 这是提示框的脚本   
<script src="../../jqAlert/jquery-1.11.3.min.js"></script>
<script src="../../jqAlert/jqAlert.min.js"></script>
<script>
    $.noConflict();
    //底部提示框
    jQuery('#alert1').click(function () {
        //第一个参数是提示信息
        //第二个(可选)参数是显示的时间，默认2000
        jqAlert.Layer('我是底部提示框','2000');
    });

    //遮罩层提示框
    jQuery('#alert2').click(function () {
        //第一个参数是提示信息
        //第二个和第三个参数不填
        jqAlert.Confirm('我是遮罩层提示框');
    });

    //遮罩层确定框
    jQuery('#alert3').click(function (e) {
        //第一个参数是提示信息
        //第二个参数是点击确定的回调函数，如果需要操作数据，必须传参数event
        //第三个参数是获取当前事件的，不传获取不到节点
        jqAlert.Confirm('确定删除吗？',function (event) {
            console.log($(event).attr('id'));
            console.log(event.id);
            console.log(e.target.id);
        },e);
    })
</script>     -->         
  </body>
</html>
