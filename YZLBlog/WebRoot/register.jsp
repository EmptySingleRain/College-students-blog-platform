<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/homestyle.css">
  
    <style type="text/css">
      .regstyle{
        width:550px;
        margin:0px auto;
      }
    </style>
    
    <script type="text/javascript">
function createXMLHttpRequest() {
	try {
		return new XMLHttpRequest();
	} catch (e) {
		try {
			return new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			return new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
}
 
function send() {
	var xmlHttp = createXMLHttpRequest();
	xmlHttp.onreadystatechange = function() {
		if(xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			if(xmlHttp.responseText == "true") {
				document.getElementById("error").innerHTML = "用户名已被注册！";
			} else {
				document.getElementById("error").innerHTML = "";
			}
		}
	};
	xmlHttp.open("POST", "/ajaxdemo1/BServlet", true);
	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	var yhm = document.getElementById("yhm").value;
	xmlHttp.send("yhm=" + yhm);
}
</script>
  <script type="text/javascript" src="Js/register.js" charset="gb2312"></script>
  </head>
  <body>
      <div id="templatemo_container">
      <!-- 网页头 -->
      <jsp:include page="template/header.html"></jsp:include>
      <div id="templatemo_content_wrapper">
      <div id="templatemo_content">
      
      <div class="regstyle">
               <center><font size="5" color ="#FF6400">注册信息</font></center><br>
      <form name="zhuce" action="servlet/Register" method="post" onsubmit="return checkForma();">
        <table class="table">
          <tr><th>用户名:</th><td><input type="text" name="yhm" onblur="send()"/><span id="error"></span></td><td><input type="button" value="用户名检测"/></td></tr>
          <tr><th>密&nbsp; 码:</th><td><input type="password" name="mm"/></td><td><label style="font-size:10px;">密码需要以英文开头，且位数不得少于6位</label></td></tr>
          <tr><th>确认密码:</th><td><input type="password" name="qrmm"/></td><td></td></tr>
          <tr><th>身份证号:</th><td><input type="text" name="sfzh"/></td><td></td></tr>
          <tr><th>联系方式:</th><td><input type="text" name="lxfs"/></td><td><label style="font-size:10px;">请输入常用的手机号码</label></td></tr>
          <tr><th>E-mail:</th><td><input type="text" name="yx"/></td><td></td></tr>
          <tr><th>个人喜好:</th><td><textarea name="grxh" cols="19" rows="7"></textarea></td><td></td></tr>
          <tr><th>注册时间:</th><td><input type="date" name="zcsj" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>" style="background-color:transparent;" readonly/></td><td></td></tr>
          <tr><td></td><td><input type="submit" value="注册" />&nbsp;&nbsp; &nbsp; <input type="reset" value="重写"/></td><td></td></tr>
        </table>
      </form>
      </div>
      </div>
      </div> 
       <!-- 网页尾 -->
      <jsp:include page="template/footer.html"></jsp:include>
      </div> 
  </body>
</html>
