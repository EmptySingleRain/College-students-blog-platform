package mybean;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class Transcoding {
	
	public String transcoding_GBK(String str){
		String strGBK = null;
		try{
		strGBK = URLEncoder.encode(str,"GBK");
		System.out.println(strGBK);}
		catch(UnsupportedEncodingException e){
			e.printStackTrace();
		}
		return strGBK;
	}
	
	public String transcoding_UTF8(String str){
		String strUTF8 = null;
		try{
		strUTF8 = URLDecoder.decode(str,"UTF-8");
		System.out.println(strUTF8);}
		catch(UnsupportedEncodingException e){
			e.printStackTrace();
		}
		return strUTF8;
	}
	
}
