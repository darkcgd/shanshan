package com.shanshan.bean;

import java.util.HashMap;
import java.util.Map;

/**
 * 通用的返回的类
 * 
 * @author cgd
 * 
 */
public class MsgBean {
	//状态码   200-成功    100-失败
	private int code;
	//提示信息
	private String msg;
	
	//用户要返回给浏览器的数据
	private Map<String, Object> data = new HashMap<String, Object>();

	public static MsgBean success(){
		MsgBean result = new MsgBean();
		result.setCode(200);
		result.setMsg("请求成功");
		return result;
	}

	public static MsgBean success(String successMsg){
		MsgBean result = new MsgBean();
		result.setCode(200);
		result.setMsg(successMsg);
		return result;
	}
	
	public static MsgBean fail(){
		MsgBean result = new MsgBean();
		result.setCode(100);
		result.setMsg("请求失败");
		return result;
	}

	public static MsgBean fail(String errorMsg){
		MsgBean result = new MsgBean();
		result.setCode(100);
		result.setMsg(errorMsg);
		return result;
	}
	
	public MsgBean add(String key, Object value){
		this.getData().put(key, value);
		return this;
	}
	
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Map<String, Object> getData() {
		return data;
	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}

	
	
	
}
