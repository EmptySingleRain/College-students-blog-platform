<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

	
<link href="css/blogger.css" type="text/css" rel="stylesheet">

<style type="text/css">
.table {
    font-family: verdana,arial,sans-serif;
    font-size:11px;

    color:#000000;
    border-width: 1px;
    border-color: #e2eefa;
    border-collapse: collapse;
    white-space: nowrap;  
}
.table th {
    background-color:#c7e1fa;
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #1c5db6;

}
.table tr {
    background-color:#e3effb;

}
.table td {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #2b73c7;
}
</style>

	<script type="text/javascript">
       function upload(myform){
       myform.action="blogger/doUpload.jsp";
       myform.submit();
       }
    </script>


  </head>
  
  <body>
  	<jsp:include page="template/header.jsp"></jsp:include>
 
<div id="container">
	<div id="parameter">
		<div id="author">
			<p class="mypic"> 
             <%
             if(session.getAttribute("imageName")!=null){ %>
               <img src="uploadimg/<%=session.getAttribute("imageName")%>" alt="image" width="100px" height="100px"/>
             <%}
             else{ %>
             <img src="<%=session.getAttribute("myimg")%>" alt="image" width="100px" height="100px"/>
             <%} %>
             </p>
<p><font size="3">个人头像</font></p>

   <form action="" method="post" enctype="multipart/form-data">  
   <table width="760" align="center" id="bg"> 
  
  <tr>
  <td width="400">
           <input type="file" name="pic" id="pic" />  
           <input type="button" value="上传" onclick="return upload(this.form)" />
           </td>  
             <td>

               </td>
               </tr>
  </table>
  
  
  
      </form> 
              
      <form action="blogger/rPersonalInfo.jsp" method="post">
        <table border="1" class="table">
          <tr><th>用户名:</th><td><input type="text" name="yhm" value=<%=session.getAttribute("bloggername")%> disabled/></td></tr>
          <tr><th>密&nbsp;&nbsp;码:</th><td><input type="text" name="mm"/></td></tr>
          <tr><th>个人喜好:</th><td><textarea name="grxh" cols="19" rows="7" style = "width:480px;height:300px;"></textarea></td></tr>    
          <tr><th></th><td><input type="submit" style="text-align:center" value="提交"/>&nbsp;&nbsp; &nbsp; <input type="reset" value="重置"/></td></tr>
        </table>
      </form>


       <!-- 网页尾 -->
       
		</div>
	</div>
	<div id="footer">
		<p>更新时间: 2018-05-27 23:17:07 &copy;All Rights Reserved </p>
	</div>
</div>
  </body>
</html>
