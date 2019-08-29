<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>交流平台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <link rel="stylesheet" type="text/css" href="css/homestyle.css">
    <link rel="stylesheet" type="text/css" href="css/contactstyle.css">

  </head>
  
  <body>
      <div id="templatemo_container">
      <!-- 网页头 -->
      <jsp:include page="template/header.html"></jsp:include>
      <div id="templatemo_content_wrapper">
      <div id="templatemo_content">


<div class="Xcontact-1">
	 <div class="Xcontainer">
  <h2>交流平台</h2>
	   <div class="Xcontact-form">
				<div class="Xcol-md-6 contact-grid">
					<form action="#" method="post">
						<p class="Xyour-para">Your Name:</p>
						<input type="text" name="name" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						<p class="Xyour-para">Your Mail:</p>
						<input type="text" name="mail" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
						<p class="Xyour-para">Your Message:</p>
						<textarea rows="10" cols="50" name="message" onfocus="this.value='';" onblur="if (this.value == '') {this.value = '';}"></textarea>
						<div class="Xsend">
							<input type="submit" value="Send">
						</div>
					</form>
				</div>
				<div class="Xcol-md-6 contact-in">
					<h4>这里是交流平台，是您可以给提供意见的地方</h4>
					<p class="Xpara1">无论您提供什么样的意见，或者有什么样需求，再或者有其他的请求，只要您想，都可以在这给我们发送消息，一旦我们接受到您的消息，我们的相关人员会认真的进行记录和统计，并且在24小时之内给予您相关问题的回复，节假日除外。<br>
                    请确保您的邮箱填写正确，否则将可能收不到我们的回复。
                    <br>十分感谢您的意见！</p>
					<div class="Xmore-address"> 
						<div class="Xaddress-more">
						  <p>建桥大学生博客平台</p>
						  <p>官网：<a href="http://www.gench.edu.cn">www.gench.edu.cn</a></p>
							<p>地址：浦东新区沪城环路1111号</p>
						</div>
						<div class="Xaddress-left">
							<p>电话：15000138972</p>
							<p>座机：xxx-xxxxxxxx</p>
							<p>邮箱：<a href="https://mail.163.com/js6/main.jsp">15000138972@163.com</a></p>
						</div>
				      </div>
				</div>
			</div>
	</div>
</div>


























                
                
                
                
                
                
                
                
                
                
                
      </div>
      </div> 
       <!-- 网页尾 -->
      <jsp:include page="template/footer.html"></jsp:include>
      </div> 
  </body>
</html>
