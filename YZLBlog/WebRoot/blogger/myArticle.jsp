<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�ҵĲ���</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <link rel="stylesheet" type="text/css" href="blogger/css/blogger.css">

  </head>
  
  <body>

  	  	
  	  	
  	  	 

<div id="container">

<jsp:include page="template/header.jsp"></jsp:include>





<form action="servlet/SubmitArticle" method=post>


<div class="input_control">

<input type="text" name="title" id="title" placeholder="��������������־����"/>
<input type="text" name="summary" id="summary" placeholder="��������������־��Ҫ"/>

</div>

  <div id="ContentWin" style="width:760px;height:400px">
  




<input name="ContentBg" type=hidden>
<div>
<textarea name="content" id="content" style="width:760px;height:100px" style="display:none">����������</textarea>
</div>
<iframe src="blogger/template/edit.html?I=content&B=ContentBg" frameBorder="0" marginHeight="0" marginWidth="0" scrolling="No" style="height:100%;width:100%"></iframe>
</div>
  <input type="submit" value="�ύ">
  
  

  
</form>





	
	<div id="footer">
		<p>����ʱ��: 2018-05-27 23:17:07 &copy;All Rights Reserved </p>
	</div>
</div>
  </body>
</html>
