		   //�����첽�������
           var httpRequest=false;
           
           //�����첽�������
           function createXMLHttp(){
           		
           		//�ж�Ϊie�����
                if(window.ActiveXObject){
                    try{
                       httpRequest=new ActiveXObject("msxml2.XMLHTTP");
                    }catch(e1){
                       try{
                       	httpRequest=new ActiveXObject("Microsoft.XMLHTTP");
                       }catch(e2){
                          httpRequest=false;
                          alert("��ie������д����첽�������ʧ�ܣ�");
                       }
                    }
                    
                //�ж�Ϊ��ie�����
                }else if(window.XMLHTTPRequest){
                    try{
                       httpRequest=new XMLHTTPRequest();
                    }catch(e3){
                       httpRequest=false;
                       alert("�ڷ�ie������д����첽�������ʧ�ܣ�");
                    }
                }
           }
           
           //׼����������������첽����(����·����url,����ʽ��get:null,post:�ύ����;�ص��������ƣ�method)
           function doCommandAjax(url,postData,mothed){
                
                //�����첽�������
                createXMLHttp();
                
                if(!postData){
                    //get��ʽ�ύ
                    httpRequest.open("get",url,true);
                }else{
                    
                    //post��ʽ�ύ
                    httpRequest.open("post",url,true);
                }
                
                //ע���¼�
                httpRequest.onreadystatechange=callBack(httpRequest,mothed);
                
                //������get����post����Ҫ��������ͷ
                httpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                
                //��������
                httpRequest.send(postData);
           }
           
           //�ص�����������
           function callBack(httpRequest,mothed){
               return function(){
                   //��ʾ������������
                   try{
	                   if(httpRequest.readyState==4){
	                       //alert(httpRequest.status);
	                       if(httpRequest.status==200){
	                          eval(mothed+"();");
	                       }
	                   }
                   }catch(e4){
                       //alert("����ʧ��");
                   }
               }
           }
           
           //��ȡpost�ύ����
		   function getData(element){
			       //encodeURIComponet()�Ա����ݽ��б���
			       //�ж��Ԫ�ص�ʱ��
			       //alert("�Ƿ�Ϊ���֣�"+isNaN(element.length));
			      
			       if(!isNaN(element.length)&&element.length>1){
			           for(var i=0;i<element.length;i++){
						   //alert("�Ƿ�ѡ��:"+element[i].checked);
						   if(element[i].checked){
						        getData(element[i]);
						        //break;
						   }
				 	   }
			       }
			       
			       if(isNaN(element.length)){
				       var sug=encodeURIComponent(element.name);
				           sug+="=";
				           sug+=encodeURIComponent(element.value);
				           sug+="&";
				       postData+=sug;
				       //alert(postData+"  :888");
				   }
		  }