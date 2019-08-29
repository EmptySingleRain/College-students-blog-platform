<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String str = null;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>博文管理页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="admin/css/table.css">
	
	<script type="text/javascript" src="Js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="Js/jquery.form.js"></script>
	
	<script language="javascript" type="text/javascript">
    function delcfm(myform) {
        if (!confirm("确认要删除？删除后，将删除此博文的所有信息，请妥善处理，如果没有非法原因，这将侵害到博主权益!\n这是一个不可逆的操作!!!")) {
            window.event.returnValue = false;
        }
        else{
        myform.action="admin/article/manageDel.jsp";
        myform.submit();
         }
        
    }
    
        function chongshen(myform){
        var reason=confirm("确认重审 请单击\"确认\"键，否者请单击\"取消\"键");
        if (reason)
        {
         myform.action="servlet/ExamineRetrial";
         method="post";
         myform.submit();
         window.alert("已经完成重置操作，请进入审核界面进行重新审核操作"); 
        }
        else
        {
        }
         }
function login() {
            var testJson = {"Name":"0"};
            $.ajax({
            //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "application/json",//预期服务器返回的数据类型
                url: "servlet/JsonServlet" ,//url
                data: JSON.stringify($('#test').serialize()),
                success: function (data) {
                   // console.log(result);//打印服务端返回的数据(调试用)
                    if(date["test"]=="1"){
                        alert("SUCCESS"); };
                },
                error : function() {
                    alert("异常！");
                }
            });
        } 
 </script>
 </head>
  <body>
  <jsp:useBean id="myarticle" class="mybean.Article"></jsp:useBean>
    <label>博文管理页面</label>
    <!-- 显示博文 -->
    
        <form id="test" onsubmit="return false" action="#" method="post">
         <table border="1" class="table">
          <tr><th align="center">博文题</th><th align="center">日期</th><th align="center">阅读量</th><th align="center">概述</th><th align="center">详细</th><th>过审情况</th><th>选择</th></tr>        

        <%
        ResultSet rs = myarticle.selectArticle();
        while(rs.next()){
            if(rs.getString("article_apply").equals("0"))
            str = "过审";
            else if(rs.getString("article_apply").equals("1"))
            str = "待审核";
            else if(rs.getString("article_apply").equals("-1"))
            str = "未过审";
            else 
            out.print("一个不可思议的错误,以下内容为apply的返回值:"+rs.getString("article_apply")+",请联系管理员解决");
        
            out.print("<tr><td>"+rs.getString("article_title")+"</td><td>"+myarticle.format(rs.getTimestamp("article_time"))+"</td><td>"+rs.getInt("article_read")+"</td><td>"+rs.getString("article_summary")+"</td><td><a href='blog_article/"+rs.getString("article_id")+".jsp'>详情</a></td><td>"+str+"</td><td><input type='radio' name='xz' value='"+rs.getString("article_id")+"'/></td></tr>");
          } 
        %> 

         <tr><td colspan="9"><label style="padding-right:60px;"><input type="button" value="测试" onclick="login()"/></label><label style="padding-right:60px;"><input type="button" value="重审" onclick="return chongshen(this.form)"/></label><label style="padding-right:60px;"><input type="button" value="删除" onclick="return delcfm(this.form)"/></label></td></tr>
         </table>
         </form>
         <div name="test"></div>
  </body>
</html>
