/*form����nameΪzhuce,����nameΪmm��ȷ������nameΪqrmm,���֤��nameΪsfzh,��ϵ��ʽnameΪlxfs,����nameΪyx*/

function checkForma() { 
	   var yhmreg=/^[a-zA-Z0-9_\u4e00-\u9fa5]+/;//��Ӣ�����֣�����һ���ַ�
	   var mmreg=/^[a-z A-Z]\w{6,}/;//�������Ӣ����ĸ��ͷ���ܳ��Ȳ���С��6λ
	   var dhreg=/(^\d{11}$)/;//�ֻ���Ϊ11λ
	   var idreg=/(^\d{15}$)|(^\d{17}(\d|X)$)/;//���֤��
	   var emailreg=/(^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$)/;//����
	   
	      if(!yhmreg.test(document.zhuce.yhm.value)){
	    	  alert("�û������벻��Ҫ��!�����пո�ȷǷ��ַ���");
	          document.zhuce.yhm.focus();
	    	  return false;
	      }
	      else if(!mmreg.test(document.zhuce.mm.value)){
	        alert("�������벻��Ҫ��");
	        document.zhuce.mm.focus();
	        return false;
	      }
	      else if(document.zhuce.qrmm.value!=document.zhuce.mm.value){            
            alert("�����������벻һ��!");
            document.zhuce.qrmm.focus();
            return false;
         } 
          else if(!idreg.test(document.zhuce.sfzh.value)){
            document.zhuce.sfzh.focus();
            alert("���֤����Ϊ15λ����18λ��<br>15(����)��18(ǰ17λΪ���֣����һλ��У��λ������Ϊ���ֻ��ַ�X)");
            return false;
          } 
           else if(!(dhreg.test(document.zhuce.lxfs.value))){
            document.zhuce.lxfs.focus();
            alert("��ϵ��ʽӦ����11λ���ֻ�����");
            return false;
          } 
          else if(!(emailreg.test(document.zhuce.yx.value))){
          document.zhuce.yx.focus();
          alert("Email�����ʽ������������ȷ������")
          return false;
          }
	      
      else
	      document.zhuce.submit;
    }
