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
       /* if (!confirm("ȷ�Ϸ��Ϲ��ҷ��ɷ��棬û��Σ�����˺͹���Ȩ������ֳ��֣�\n������ȷ�ϣ�����ȡ����")) {
            window.event.returnValue = false;
        }*/
/*
        pass.action="admin/article/examinePass.jsp";
        pass.submit();*/
        
    }
    
        function passcfm(form) {
        
        if (!confirm("ȷ�Ϸ��Ϲ��ҷ��ɷ��棬û��Σ�����˺͹���Ȩ������ֳ��֣�\n������ȷ�ϣ�����ȡ����")) {
            window.event.returnValue = false;
        }

        form.action="admin/article/examinePass.jsp";
        form.submit();
        
    }
    
    function rejectcfm(form) {
    
        if (!confirm("�����Ϲ��ҷ��ɷ��棬���貵�أ�\n������ȷ�ϣ�����ȡ����")) {
            window.event.returnValue = false;
        }
        
        form.action="admin/article/examineReject.jsp";
        form.submit();
        
    }

 </script>
 
  </head>
  
  <body>
 <jsp:useBean id="myarticle" class="mybean.Article"></jsp:useBean>
    <label>�������ҳ��</label>
    <!-- ��ʾ���� -->
    
        <form action="admin/article/examinePass.jsp" method="post">
         <table border="1" class="table">
          <tr><th align="center">������</th><th align="center">����</th><th align="center">�Ķ���</th><th align="center">����</th><th align="center">��ϸ</th><th>ѡ��</th></tr>        

        <%
        ResultSet rs = myarticle.selectArticleThoughApply();
        while(rs.next()){
            out.print("<tr><td>"+rs.getString("article_title")+"</td><td>"+myarticle.format(rs.getTimestamp("article_time"))+"</td><td>"+rs.getInt("article_read")+"</td><td>"+rs.getString("article_summary")+"</td><td><a href='blog_article/"+rs.getString("article_id")+".jsp'>����</a></td><td><input type='radio' name='xz' value='"+rs.getString("article_id")+"'/></td></tr>");
          }
        %> 

         <tr><td colspan="9"><label style="padding-right:60px;"><input type="button" value="ͨ��" onclick="passcfm(this.form)"/></label><label style="padding-right:60px;"><input type="button" value="����" onclick="rejectcfm(this.form)"/></label></td></tr>
         </table>
         </form>
  </body>
</html>
