<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���۹���ҳ��</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="admin/css/table.css">
	<script language="javascript" type="text/javascript">
	
    function delcfm() {
        if (!confirm("ȷ��Ҫɾ����ɾ���󣬽�ɾ�������۵�������Ϣ�������ƴ������û�зǷ�ԭ���⽫�ֺ����û�Ȩ��!\n���棺����һ��������Ĳ���!!!")) {
            window.event.returnValue = false;
        }
    }
    
        function xiugai(myform){
         alert("�˹�����δʵ�֣��д����ñ�Ҫ��");
         //myform.action="admin/user/rBloggerManage.jsp";
         //myform.submit();
         }

 </script>
  </head>
  
  <body>
  <jsp:useBean id="myarticle" class="mybean.Article"></jsp:useBean>
    <label>���۹���ҳ��</label>
    <!-- ��ʾ���� -->
    
        <form action="admin/article/manageDel.jsp" method="post">
         <table border="1" class="table">
          <tr><th align="center">���۵Ĳ�����</th><th align="center">��������</th><th align="center">��������</th><th align="center">�����û�</th><th align="center">���ĵ�����</th><th align="center">��ϸ</th><th align="center">ѡ��</th></tr>        

        <%
        ResultSet rs = myarticle.selectComment();
        
        while(rs.next()){
 
        ResultSet rs1 = myarticle.selectCommentById(Integer.parseInt(rs.getString("article_id")));
        ResultSet rs2 = myarticle.selectAuthor(Integer.parseInt(rs.getString("article_id")));
        rs1.next();
        rs2.next();
        
        out.print("<tr><td>"+rs2.getString("article_title")+"</td><td>"+myarticle.format(rs1.getTimestamp("comment_time"))+"</td><td>"+rs1.getString("comment_content")+"</td><td>"+rs1.getString("comment_username")+"</td><td>"+rs2.getString("article_author")+"</td><td><a href='blog_article/"+rs2.getString("article_id")+".jsp'>����</a></td><td><input type='radio' name='xz' value='"+rs2.getString("article_id")+"'/></td></tr>");
        }
        %> 

         <tr><td colspan="9"><label style="padding-right:60px;"><input type="button" name="xgbwxx" id="xgbwxx" value="�޸�" onclick="return xiugai(this.form)"/></label><label style="padding-right:60px;"><input type="submit" value="ɾ��" onclick="javascript:delcfm()"/></label></td></tr>
         </table>
         </form>
  </body>
</html>
