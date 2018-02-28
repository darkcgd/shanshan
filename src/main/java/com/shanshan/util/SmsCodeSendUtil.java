package com.shanshan.util;

/**
 * Created by szmg on 17/9/28.
 */
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import java.util.Random;

import com.shanshan.controller.ArticleCategoryController;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.SimpleHttpConnectionManager;
import org.apache.commons.httpclient.URI;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;


/**
 *
 * @param //url 应用地址，类似于http://ip:port/msg/
 * @param //account 账号
 * @param //pswd 密码
 * @param //mobile 手机号码，多个号码使用","分割
 * @param //msg 短信内容
 * @param //needstatus 是否需要状态报告，需要true，不需要false
 * @return 返回值定义参见HTTP协议文档
 * @throws Exception
 */
public class SmsCodeSendUtil { 
   private static final Logger LOG = Logger.getLogger(SmsCodeSendUtil.class);
   private static String Url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
   public static String sendSmsCode(String phone){  
	   /** String code="";
	    HttpClient client = new HttpClient(); 
		PostMethod method = new PostMethod(Url);
		client.getParams().setContentCharset("GBK");
		method.setRequestHeader("ContentType","application/x-www-form-urlencoded;charset=GBK");
		*/
		String randomCode =getRandomCode();
	    /**
	  
		NameValuePair[] data = {//提交短信
			    new NameValuePair("account", "C29926681"), //查看用户名是登录用户中心->验证码短信->产品总览->APIID
			    new NameValuePair("password", "bd3468194354d80088a66130bc91d1d1"),  //查看密码请登录用户中心->验证码短信->产品总览->APIKEY
			    //new NameValuePair("password", util.StringUtil.MD5Encode("密码")),
			    new NameValuePair("mobile", phone), 
			    new NameValuePair("content", content),
		};
		method.setRequestBody(data);

		try {
			client.executeMethod(method);			
			String SubmitResult =method.getResponseBodyAsString();

			System.out.println("-----------/n"+SubmitResult+"---------/n");

			Document doc = DocumentHelper.parseText(SubmitResult);
			Element root = doc.getRootElement();

			//code = root.elementText("code");
			//String msg = root.elementText("msg");
			//String smsid = root.elementText("smsid");

			//System.out.println(code);
			//System.out.println(msg);
			//System.out.println(smsid);

			 if("2".equals(code)){
				System.out.println("短信提交成功");
			}

		} catch (HttpException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return randomCode; 
	//return SmsCodeSendUtil.batchSend(null,null,null,  phone, null,false , extno)+","+randomCode;
	*/
		System.out.println(randomCode);
		return randomCode;
   }   
        /**
        String url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";// 应用地址
        String account = Config.Sms_Acount;// 账号
        String pswd = Config.Sms_Acount_Pwd;// 密码
        //String mobile = "13800210021,13800138000";// 手机号码，多个号码使用","分割
        //String mobile = "13600055457";// 手机号码，多个号码使用","分割
        String randomCode = SmsCodeSendUtil.getRandomCode();
        System.out.println(randomCode);
        String msg = "您的验证码是"+randomCode+",10分钟内有效";// 短信内容
        boolean needstatus = true;// 是否需要状态报告，需要true，不需要false
        String extno = null;// 扩展码
        LOG.info("================================="+SmsCodeSendUtil.batchSend(url, account, pswd, phone, msg, needstatus, extno)+","+randomCode);
        return SmsCodeSendUtil.batchSend(url, account, pswd, phone, msg, needstatus, extno)+","+randomCode;
        */




    /**
     String content="20170930152606,0\n" +
     "1000930152606987600";

     20170930152606,0
     1000930152606987600

     * @param url
     * @param account
     * @param pswd
     * @param mobile
     * @param msg
     * @param needstatus
     * @param extno
     * @return
     * @throws Exception
     */
	
	/**
    private static String batchSend(String url, String account, String pswd, String mobile, String msg,
                                   boolean needstatus, String extno) {
        //HttpClient client = new HttpClient(new HttpClientParams(), new SimpleHttpConnectionManager(true));
        //GetMethod method = new GetMethod();

		HttpClient client = new HttpClient(); 
		PostMethod method = new PostMethod(url);
        try {
            URI base = new URI(url, false);
            method.setURI(new URI(base, "HttpBatchSendSM", false));
            method.setQueryString(new NameValuePair[] {
                    new NameValuePair("account", account),
                    new NameValuePair("pswd", pswd),
                    new NameValuePair("mobile", mobile),
                    new NameValuePair("needstatus", String.valueOf(needstatus)),
                    new NameValuePair("msg", msg),
                    new NameValuePair("extno", extno),
            });
            int result = client.executeMethod(method);
            if (result == HttpStatus.SC_OK) {
                InputStream in = method.getResponseBodyAsStream();
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                byte[] buffer = new byte[1024];
                int len = 0;
                while ((len = in.read(buffer)) != -1) {
                    baos.write(buffer, 0, len);
                }
                String content=URLDecoder.decode(baos.toString(), "UTF-8");
                if(content==null){
                    return null;
                }
                String[] contentArys = content.split("\n");
                if(contentArys!=null&&contentArys.length>0){
                    return contentArys[0];
                }
                return null;
            } else {
                throw new Exception("HTTP ERROR Status: " + method.getStatusCode() + ":" + method.getStatusText());
            }
        } finally {
            method.releaseConnection();
        }
    }
    */

    private static String getRandomCode(){
        String str="0123456789";
        StringBuilder sb=new StringBuilder(4);
        for(int i=0;i<6;i++)
        {
            char ch=str.charAt(new Random().nextInt(str.length()));
            sb.append(ch);
        }
        return sb.toString();
    }

}
