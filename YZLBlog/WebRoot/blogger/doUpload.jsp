<%@ page contentType="text/html; charset=gbk" import="java.util.*,com.jspsmart.upload.*"%>

<html>
<head>
<title>�ļ��ϴ�����ҳ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
</head>
<script>
   function backword(){
          window.history.back();
   }

</script>
<body>

<%
            //����ֱ�ӷ��ʴ�ҳ����   
            try{   
                //ָ������   
                SmartUpload smart=new SmartUpload();   
                smart.initialize(pageContext);   
                smart.upload();                 
                String value=getServletContext().getRealPath("/")+"uploadimg";
                out.print(value);
                Files files=smart.getFiles();
                File file=null;
                      for(int i=0;i<files.getCount();i++){
                      file=files.getFile(i);}	
	//��ȡͼƬ�Ŀͻ���·����
	            String name=file.getFileName();         
	                   
                //���ļ����浽ͬĿ¼��pic�ļ���   
              smart.save(value);
              session.setAttribute("imageName", name);    
              response.sendRedirect("personalInfo.jsp");              
            }       
            catch(Exception e){   
            }   
         %>  
       
    </body>  
</html>  