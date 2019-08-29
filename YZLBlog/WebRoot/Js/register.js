/*form表单的name为zhuce,密码name为mm，确认密码name为qrmm,身份证号name为sfzh,联系方式name为lxfs,邮箱name为yx*/

function checkForma() { 
	   var yhmreg=/^[a-zA-Z0-9_\u4e00-\u9fa5]+/;//中英文数字，至少一个字符
	   var mmreg=/^[a-z A-Z]\w{6,}/;//密码必须英文字母开头，总长度不得小于6位
	   var dhreg=/(^\d{11}$)/;//手机号为11位
	   var idreg=/(^\d{15}$)|(^\d{17}(\d|X)$)/;//身份证号
	   var emailreg=/(^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$)/;//邮箱
	   
	      if(!yhmreg.test(document.zhuce.yhm.value)){
	    	  alert("用户名输入不合要求!不能有空格等非法字符！");
	          document.zhuce.yhm.focus();
	    	  return false;
	      }
	      else if(!mmreg.test(document.zhuce.mm.value)){
	        alert("密码输入不合要求！");
	        document.zhuce.mm.focus();
	        return false;
	      }
	      else if(document.zhuce.qrmm.value!=document.zhuce.mm.value){            
            alert("两次密码输入不一致!");
            document.zhuce.qrmm.focus();
            return false;
         } 
          else if(!idreg.test(document.zhuce.sfzh.value)){
            document.zhuce.sfzh.focus();
            alert("身份证号码为15位或者18位，<br>15(数字)，18(前17位为数字，最后一位是校验位，可能为数字或字符X)");
            return false;
          } 
           else if(!(dhreg.test(document.zhuce.lxfs.value))){
            document.zhuce.lxfs.focus();
            alert("联系方式应该是11位的手机号码");
            return false;
          } 
          else if(!(emailreg.test(document.zhuce.yx.value))){
          document.zhuce.yx.focus();
          alert("Email邮箱格式错误，请输入正确的邮箱")
          return false;
          }
	      
      else
	      document.zhuce.submit;
    }
