<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'examine.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="admin/css/table.css">




	<script language="javascript" type="text/javascript">
	
    function passcfm() {
       /* if (!confirm("确认符合国家法律法规，没有危害他人和国家权益的文字出现！\n是则点击确认，否则取消！")) {
            window.event.returnValue = false;
        }*/
/*
        pass.action="admin/article/examinePass.jsp";
        pass.submit();*/
        
    }
    
        function passcfm(form) {
        
        if (!confirm("确认符合国家法律法规，没有危害他人和国家权益的文字出现！\n是则点击确认，否则取消！")) {
            window.event.returnValue = false;
        }

        form.action="admin/article/examinePass.jsp";
        form.submit();
        
    }
    
    function rejectcfm(form) {
    
        if (!confirm("不符合国家法律法规，现予驳回！\n是则点击确认，否则取消！")) {
            window.event.returnValue = false;
        }
        
        form.action="admin/article/examineReject.jsp";
        form.submit();
        
    }

 </script>
 
  </head>
  
  <body>
 <jsp:useBean id="myarticle" class="mybean.Article"></jsp:useBean>
    <label>博文审核页面</label>
    <!-- 显示博文 -->
    
        <form action="admin/article/examinePass.jsp" method="post">
         <table border="1" class="table">
          <tr><th align="center">博文题</th><th align="center">日期</th><th align="center">阅读量</th><th align="center">概述</th><th align="center">详细</th><th>选择</th></tr>        

        <%
        ResultSet rs = myarticle.selectArticleThoughApply();
        while(rs.next()){
            out.print("<tr><td>"+rs.getString("article_title")+"</td><td>"+myarticle.format(rs.getTimestamp("article_time"))+"</td><td>"+rs.getInt("article_read")+"</td><td>"+rs.getString("article_summary")+"</td><td><a href='blog_article/"+rs.getString("article_id")+".jsp'>详情</a></td><td><input type='radio' name='xz' value='"+rs.getString("article_id")+"'/></td></tr>");
          }
        %> 

         <tr><td colspan="9"><label style="padding-right:60px;"><input type="button" value="通过" onclick="passcfm(this.form)"/></label><label style="padding-right:60px;"><input type="button" value="驳回" onclick="rejectcfm(this.form)"/></label></td></tr>
         </table>
         </form>
  </body>
</html>
