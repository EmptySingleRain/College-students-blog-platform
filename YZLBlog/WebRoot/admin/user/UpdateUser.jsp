<%@ page language="java" import="java.util.*,java.sql.*,module.javabean.user.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String str = null;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更新用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equihadoopv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="admin/css/table.css">

		<script language="javascript" type="text/javascript">
function myFocus(obj, color, str) {

	//判断文本框中的内容是否是默认内容

	if (obj.value == str) {
		obj.value = "";
	}

	//设置文本框获取焦点时候背景颜色变换
	obj.style.backgroundColor = color;
}

function myblur(obj, color, str) {

	//当鼠标离开时候改变文本框背景颜色
	if (obj.value == "") {
		obj.value = str;
	}
	obj.style.background = color;
}

function updatefm() {
	if (!confirm("确认要修改？")) {
		window.event.returnValue = false;
	}
}

$(function() {
	$(":radio[name='box']").click(function() {
		$(this).parent().siblings().each(function() {
			var text = $(this).text();
		});
	});
});
</script>



	</head>
  
  <body>
  
  <jsp:useBean id="myUser" class="module.javabean.user.UserMethod"></jsp:useBean>

          <label>更新用户信息</label>
        
        
      <form action="servlet/UpdateUser" method="post" class="nput_control">
       <table border="1" class="table">
       
        <tr>
            <th>姓名</th><th>密码</th><th>身份类型<br/></th><th>身份证号</th><th>联系方式</th><th>电子邮箱</th><th>个人爱好</th><th>操作</th>
        </tr>
        
        <%  
        User user = new User();
        List<User> list = myUser.selectAllUser(user);
        for(User user1:list)
        {      
            if(user1.getIdcode()==0)
            str = "博主";
            else if(user1.getIdcode()==1)
            str = "普通用户";
            else
            out.print("请联系管理员！解决这个不可思议的错误！错误返回值:"+user1.getIdcode());

        %>
        
        <tr>
            <td><input name="yhm" size=4 class="defult" value=<%= user1.getUsername()%> readOnly="true"></td>
            <td><input name="mm" class="defult" value=<%= user1.getPassword()%> readOnly="true"></td>      
            <td><select name="sflx" class="dropdown"><option value="<%=str%>"selected hidden><%=str%></option>><option value="博主">博主</option><option value="普通用户">普通用户</option></select></td>
            <td><input type="text" name="sfzh" onfocus="myFocus(this,'#f4eaf1','<%= user1.getIdnumber()%>')" onblur="myblur(this,'#e6f1fc','<%= user1.getIdnumber()%>')" size=25 value=<%= user1.getIdnumber()%> ></td>
            <td><input type="text" name="lxfs" onfocus="myFocus(this,'#f4eaf1','<%= user1.getContactway()%>')" onblur="myblur(this,'#e6f1fc','<%= user1.getContactway()%>')" size=18 value=<%=user1.getContactway()%>></td>
            <td><input type="text" name="yx" onfocus="myFocus(this,'#f4eaf1','<%= user1.getEmail()%>')" onblur="myblur(this,'#e6f1fc','<%= user1.getEmail()%>')" size=28 value=<%=user1.getEmail()%>></td>
            <td><input type="text" name="xh" onfocus="myFocus(this,'#f4eaf1','<%= user1.getPerferences()%>')" onblur="myblur(this,'#e6f1fc','<%= user1.getPerferences()%>')" value=<%=user1.getPerferences()%>></td>
            <td><input type="radio" name="xg" value="<%=user1%>"/></td>
        </tr>
        <% } %>
           <tr><td  colspan="8"><input type="submit" name="Submit" value="修改用户" style="width:80" onclick="javascript:updatefm()">  
          </td></tr>
    </table>
    </form>
  </body>
</html>
