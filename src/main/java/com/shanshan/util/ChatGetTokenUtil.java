package com.shanshan.util;

import java.io.InputStream;
import java.util.Date;
import java.util.Map;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;

import io.swagger.client.api.AuthenticationApi;
import io.swagger.client.model.Token;

public class ChatGetTokenUtil {
	public static String GRANT_TYPE;
    private static String CLIENT_ID;
    private static String CLIENT_SECRET;
    private static Token BODY;
    private static AuthenticationApi API = new AuthenticationApi();
    private static String ACCESS_TOKEN;
    private static Double EXPIREDAT = -1D;
    private static final Logger logger = LoggerFactory.getLogger(ChatGetTokenUtil.class);
    
    /**
     * 从服务器获取token
     */
    static{
    	InputStream inputStream=ChatGetTokenUtil.class.getClassLoader().getResourceAsStream("chatconfig.properties");
    	Properties prop=new Properties();
    	try {
			prop.load(inputStream);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    	GRANT_TYPE=prop.getProperty("GRANT_TYPE");
    	CLIENT_ID=prop.getProperty("CLIENT_ID");
    	CLIENT_SECRET=prop.getProperty("CLIENT_SECRET");
    	BODY= new Token().clientId(CLIENT_ID).grantType(GRANT_TYPE).clientSecret(CLIENT_SECRET);	
    }
    /**
     * 初始化token
     */
    public static void initTokenByProp(){
    	String resp=null;
    	try {
			resp=API.orgNameAppNameTokenPost(ChatOrgInfo.Org_Name, ChatOrgInfo.App_Name,BODY);
		} catch (Exception e) {
			// TODO: handle exception
			 logger.error(e.getMessage());
		}
    	Gson gson=new Gson();
    	Map map=gson.fromJson(resp, Map.class);
    	ACCESS_TOKEN="Bearer"+map.get("access_token");    	   	
    	EXPIREDAT =System.currentTimeMillis()+(Double)map.get("expires_in");
    	
    }
    /**
     * get Token from memory
     *
     * @return
     */
    
    public static String getAccessToken(){
    	if(ACCESS_TOKEN==null || isExpired()){
    		initTokenByProp();
    	}
    	return ACCESS_TOKEN;
    }
    public static boolean isExpired(){
    	return System.currentTimeMillis() > EXPIREDAT;
    }
}
