<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'comment.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link href="css/blogger.css" type="text/css" rel="stylesheet">

    <script charset="utf-8" src="kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor/plugins/code/prettify.js"></script>
	<!--<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="cpms"]', {
				cssPath : 'kindeditor/plugins/code/prettify.css',
				uploadJson : 'kindeditor/jsp/upload_json.jsp',
				fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp',
				allowFileManager : true,			
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
  -->
<script type="text/javascript">
    //KindEditor脚本
    var editor;
    KindEditor.ready(function(K) {
        editor = K.create('#article', {
        //items : ['forecolor','emoticons']
        });
        editor.sync();//将KindEditor的数据同步到textarea标签。
        var value_content = $("#text_new_continue").val();
    });
</script>

  </head>
  
  <body>
  	  	<jsp:include page="template/header.jsp"></jsp:include>
  	  	
  	  	
  	  	 
 
<div id="container">

<textarea id="article" name="article" style="width:99.78%;height:200px;visibility:;"></textarea> 




	
	<div id="footer">
		<p>更新时间: 2018-05-27 23:17:07 &copy;All Rights Reserved </p>
	</div>
</div>
  </body>
</html>
