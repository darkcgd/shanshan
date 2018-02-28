package com.shanshan.util;

import java.io.InputStream;
import java.util.Properties;

public class ChatOrgInfo {
  public static  String Org_Name;
  public static String App_Name;
  
  static{
	  InputStream inputStream=ChatOrgInfo.class.getClassLoader().getResourceAsStream("chatconfig.properties");
	  Properties prop=new Properties();
	  try {
		prop.load(inputStream);
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	  Org_Name=prop.getProperty("ORG_NAME");
	  App_Name=prop.getProperty("APP_NAME");
  }
  
}
