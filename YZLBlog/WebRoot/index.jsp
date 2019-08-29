<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String title1new,title2new,title3new,title4new = null;
String time1new,time2new,time3new,time4new = null;
String summary1new,summary2new,summary3new,summary4new = null;
int read1new,read2new,read3new,read4new = 0;
String content1new,content2new,content3new,content4new = null;

String title1won,title2won,title3won,title4won = null;
String time1won,time2won,time3won,time4won = null;
String summary1won,summary2won,summary3won,summary4won = null;
int read1won,read2won,read3won,read4won = 0;
String content1won,content2won,content3won,content4won = null;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <title>Melody博客平台</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/homestyle.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
	if (field.defaultValue == field.value) field.value = '';
	else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body>

<jsp:useBean id="mydriver" class="conn.LoadDriver"></jsp:useBean>
<jsp:useBean id="myarticle" class="mybean.Article"></jsp:useBean>
<%mydriver.LoadDriver();%>
  <%   
      Map<String, Object> map1new = new HashMap<String, Object>(); 
      map1new = myarticle.selectArticleById(3);
      title1new = map1new.get("title").toString();
      time1new = map1new.get("time").toString();
      read1new = (Integer)map1new.get("read");
      summary1new = map1new.get("summary").toString();
      content1new = map1new.get("content").toString();
      session.setAttribute("title1new",title1new);
      session.setAttribute("time1new",time1new);
      session.setAttribute("read1new",read1new);
      session.setAttribute("summary1new",summary1new);
      session.setAttribute("content1new",content1new);
      
      
      Map<String, Object> map2new = new HashMap<String, Object>(); 
      map2new = myarticle.selectArticleById(13);
      title2new = map2new.get("title").toString();
      time2new = map2new.get("time").toString();
      read2new = (Integer)map2new.get("read");
      summary2new = map2new.get("summary").toString();
      content2new = map2new.get("content").toString();  
      session.setAttribute("title2new",title2new);
      session.setAttribute("time2new",time2new);
      session.setAttribute("read2new",read2new);
      session.setAttribute("summary2new",summary2new);
      session.setAttribute("content2new",content2new);
      
      Map<String, Object> map1won = new HashMap<String, Object>();   
      map1won = myarticle.selectArticleById(4);
      title1won = map1won.get("title").toString();
      time1won = map1won.get("time").toString();
      read1won = (Integer)map1won.get("read");
      summary1won = map1won.get("summary").toString();
      content1won = map1won.get("content").toString();
      session.setAttribute("title1won",title1won);
      session.setAttribute("time1won",time1won);
      session.setAttribute("read1won",read1won);
      session.setAttribute("summary1won",summary1won);
      session.setAttribute("content1won",content1won);
   %>

<div id="templatemo_container">
    <!-- 网页头 -->
    <jsp:include page="template/header.html"></jsp:include>
    <div id="templatemo_content_wrapper">
    
    	<div id="templatemo_content">
        
        	<div id="side_column">
        
                <div class="side_column_box">
                
                    <h2>最新博文</h2>
                    <div class="news_section">
                        <h3><%=session.getAttribute("title2new") %></h3>
                        <p><%=session.getAttribute("summary2new") %>......  <a href="latestBlog.jsp#zx2">继续</a></p>
                    </div>
                        
                    <div class="news_section">
                        <h3><%=session.getAttribute("title1new") %></h3>
                        <p><%=session.getAttribute("summary1new") %>......  <a href="latestBlog.jsp#zx1">继续</a></p>
                    </div>
                    
                    <div class="button_01"><a href="latestBlog.jsp">Read all</a></div>
    
                    </div>
                
                <div class="side_column_box news_letter_box">
                
                    <h3>请在此处登陆</h3><br>
                    
                    <form action="servlet/LoginServlet" method="post">
                        <input type="text" value="输入用户名" name="yhm" size="10" class="inputfield" title="输入用户名" onfocus="clearText(this)" onblur="clearText(this)" />
                        <input type="text" value="输入密码" name="mm" size="10" class="inputfield" title="输入密码" onfocus="clearText(this)" onblur="clearText(this)" />
                        <input type="submit" name="dl" value="登录" alt="登录" class="submitbutton" title="Search" />     <!-- submit才会指向action -->
                        <a href="register.jsp">注册</a>
                    </form>
                 <!--
                    <form action="rLogin.jsp" method="post">
                        <input type="text" value="输入用户名" name="yhm" size="10" class="inputfield" title="输入用户名" onfocus="clearText(this)" onblur="clearText(this)" />
                        <input type="text" value="输入密码" name="mm" size="10" class="inputfield" title="输入密码" onfocus="clearText(this)" onblur="clearText(this)" />
                        <input type="submit" name="dl" value="登录" alt="登录" class="submitbutton" title="Search" /> 
                        <a href="register.jsp">注册</a>
                    </form>
                 -->   
                    
    
                </div>
                
            
            </div> 
            
            <div id="main_column">
            
            	
                <div class="main_column_section">       
                
                    <h2>欢迎来到Melody博客平台</h2>
                    <a href="#"><img class="image_wrapper fl_image" src="images/templatemo_image_01.jpg" alt="image" /></a>
                  <p>Melody博客平台创建于2017年......</p>
                            
                  <p>本博客平台是提供给博主们分享文章、传递喜怒哀乐......</p>
                          
                          <div class="cleaner_h30"></div>
                          <div class="button_01"><a href="#">Read more</a></div>
                    
                    <div class="cleaner"></div>
                </div>
                <div class="cleaner_h60"></div>
            <div class="main_column_section">       
                
                    <h2>博客园地</h2>
                                  
                    <div class="section_w280 fl">  
                        <img class="image_wrapper fl_image" src="images/templatemo_image_01.png" alt="image" />
                        <h3>精彩博文</h3>
                        <p>此处是博文内容博文内容博文内容博文内容...... <a href="wonderfulBlog.jsp">阅读全文</a></p>
                    </div>
                    
                    <div class="section_w280 fr">  
                        <img class="image_wrapper fl_image" src="images/templatemo_image_02.png" alt="image" />
                        <h3>精彩评论</h3>
                        <p>此处是读者评论读者评论读者评论读者评论读者评论......<a href="#">阅读评论</a></p>
                    </div>
                    
                    <div class="cleaner_h30"></div>
                    
                    <div class="section_w280 fl">  
                        <img class="image_wrapper fl_image" src="images/templatemo_image_04.png" alt="image" />
                        <h3>博主之星</h3>
                        <p>此处是博主之星的格言</p>
                    </div>
                    
                    <div class="section_w280 fr">  
                        <img class="image_wrapper fl_image" src="images/templatemo_image_03.png" alt="image" />
                        <h3>快速链接</h3>
                        <p>推荐的博客平台的链接 <a href="#">更多</a></p>
                    </div>
                    
                </div>
                
                
                <div class="cleaner"></div>
            </div> 
            
            
        	<div class="cleaner"></div>
        </div> 
    	
      <!-- 网页尾 -->
      <jsp:include page="template/footer.html"></jsp:include>

        <div class="cleaner"></div>
    </div>
    
</div> 
</body>
</html>