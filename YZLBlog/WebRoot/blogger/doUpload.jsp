<%@ page contentType="text/html; charset=gbk" import="java.util.*,com.jspsmart.upload.*"%>

<html>
<head>
<title>文件上传处理页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
</head>
<script>
   function backword(){
          window.history.back();
   }

</script>
<body>

<%
            //避免直接访问此页报错   
            try{   
                //指定动作   
                SmartUpload smart=new SmartUpload();   
                smart.initialize(pageContext);   
                smart.upload();                 
                String value=getServletContext().getRealPath("/")+"uploadimg";
                out.print(value);
                Files files=smart.getFiles();
                File file=null;
                      for(int i=0;i<files.getCount();i++){
                      file=files.getFile(i);}	
	//获取图片的客户端路径名
	            String name=file.getFileName();         
	                   
                //把文件保存到同目录的pic文件夹   
              smart.save(value);
              session.setAttribute("imageName", name);    
              response.sendRedirect("personalInfo.jsp");              
            }       
            catch(Exception e){   
            }   
         %>  
       
    </body>  
</html>  