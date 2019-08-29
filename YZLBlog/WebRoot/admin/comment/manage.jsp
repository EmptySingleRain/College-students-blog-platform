<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>评论管理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="admin/css/table.css">
	<script language="javascript" type="text/javascript">
	
    function delcfm() {
        if (!confirm("确认要删除？删除后，将删除此评论的所有信息，请妥善处理，如果没有非法原因，这将侵害到用户权益!\n警告：这是一个不可逆的操作!!!")) {
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
  <jsp:useBean id="myarticle" class="mybean.Article"></jsp:useBean>
    <label>评论管理页面</label>
    <!-- 显示博文 -->
    
        <form action="admin/article/manageDel.jsp" method="post">
         <table border="1" class="table">
          <tr><th align="center">评论的博文名</th><th align="center">评论日期</th><th align="center">评论内容</th><th align="center">评论用户</th><th align="center">博文的作者</th><th align="center">详细</th><th align="center">选择</th></tr>        

        <%
        ResultSet rs = myarticle.selectComment();
        
        while(rs.next()){
 
        ResultSet rs1 = myarticle.selectCommentById(Integer.parseInt(rs.getString("article_id")));
        ResultSet rs2 = myarticle.selectAuthor(Integer.parseInt(rs.getString("article_id")));
        rs1.next();
        rs2.next();
        
        out.print("<tr><td>"+rs2.getString("article_title")+"</td><td>"+myarticle.format(rs1.getTimestamp("comment_time"))+"</td><td>"+rs1.getString("comment_content")+"</td><td>"+rs1.getString("comment_username")+"</td><td>"+rs2.getString("article_author")+"</td><td><a href='blog_article/"+rs2.getString("article_id")+".jsp'>详情</a></td><td><input type='radio' name='xz' value='"+rs2.getString("article_id")+"'/></td></tr>");
        }
        %> 

         <tr><td colspan="9"><label style="padding-right:60px;"><input type="button" name="xgbwxx" id="xgbwxx" value="修改" onclick="return xiugai(this.form)"/></label><label style="padding-right:60px;"><input type="submit" value="删除" onclick="javascript:delcfm()"/></label></td></tr>
         </table>
         </form>
  </body>
</html>
