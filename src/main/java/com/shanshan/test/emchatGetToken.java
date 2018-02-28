package com.shanshan.test;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.URL;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.util.HttpURLConnection;
import org.apache.log4j.Logger;

import com.google.gson.JsonObject;

public class emchatGetToken {
	 private static final Logger Log=Logger.getLogger(emchatGetToken.class);
	 private static String Url="https://a1.easemob.com/1114171018178282/insthu/token";	 
	 final static String params = "{\"grant_type\":\"client_credentials\",\"client_id\":\"YXA6OURjkLPnEeeZLOHOoZwjAg\",\"client_secret\":\"YXA6DUBByKNl0pJ-LcyoprFsruJwo1U\"}";  
	 public static void main(String[] args) {
		// TODO Auto-generated method stub
		 post(Url,params);
	  }	
	 public static String post(String strURL, String params) {  
	        System.out.println(strURL);  
	        System.out.println(params);  
	        try {  
	            URL url = new URL(strURL);// 创建连接  
	            HttpURLConnection connection = (HttpURLConnection) url  
	                    .openConnection();  
	            connection.setDoOutput(true);  
	            connection.setDoInput(true);  
	            connection.setUseCaches(false);  
	            connection.setInstanceFollowRedirects(true);  
	            connection.setRequestMethod("POST"); // 设置请求方式  
	            connection.setRequestProperty("Accept", "application/json"); // 设置接收数据的格式  
	            connection.setRequestProperty("Content-Type", "application/json"); // 设置发送数据的格式  
	            connection.connect();  
	            OutputStreamWriter out = new OutputStreamWriter(  
	                    connection.getOutputStream(), "UTF-8"); // utf-8编码  
	            out.append(params);  
	            out.flush();  
	            out.close();  
	            // 读取响应  
	            int length = (int) connection.getContentLength();// 获取长度  
	            InputStream is = connection.getInputStream();  
	            if (length != -1) {  
	                byte[] data = new byte[length];  
	                byte[] temp = new byte[512];  
	                int readLen = 0;  
	                int destPos = 0;  
	                while ((readLen = is.read(temp)) > 0) {  
	                    System.arraycopy(temp, 0, data, destPos, readLen);  
	                    destPos += readLen;  
	                }  
	                String result = new String(data, "UTF-8"); // utf-8编码  
	                System.out.println(result);  
	                return result;  
	            }  
	        } catch (IOException e) {  
	            // TODO Auto-generated catch block  
	            e.printStackTrace();  
	        }  
	        return "error"; // 自定义错误信息  
	    }  
	 
      
	 public static String getToken(){
		 String access_token="";
		 HttpClient client=new HttpClient();
		 PostMethod method=new PostMethod(Url);
		 client.getParams().setContentCharset("UTF-8");
		 method.setRequestHeader("ContentType","application/json;charset=UTF-8");
		 JsonObject jsonObject=new JsonObject();
		 jsonObject.addProperty("grant_type", "client_credentials");
		 jsonObject.addProperty("client_id", "YXA6OURjkLPnEeeZLOHOoZwjAg");
		 jsonObject.addProperty("client_secret","YXA6DUBByKNl0pJ-LcyoprFsruJwo1U");
		// method.setRequestBody(jsonObject);
		 try {
			 client.executeMethod(method);	
			// Object SubmitResult =method.getres;	
			// System.out.println(SubmitResult);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		 return access_token;
	 }
	

}
