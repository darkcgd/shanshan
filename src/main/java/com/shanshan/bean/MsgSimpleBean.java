package com.shanshan.bean;

/**
 * 通用的返回的类
 * 
 * @author cgd
 * 
 */
public class MsgSimpleBean {
	//状态码   200-成功    100-失败
	private int code;
	//提示信息
	private String msg;

	public static MsgSimpleBean success(){
		MsgSimpleBean result = new MsgSimpleBean();
		result.setCode(200);
		result.setMsg("请求成功");
		return result;
	}

	public static MsgSimpleBean success(String successMsg){
		MsgSimpleBean result = new MsgSimpleBean();
		result.setCode(200);
		result.setMsg(successMsg);
		return result;
	}
	
	public static MsgSimpleBean fail(){
		MsgSimpleBean result = new MsgSimpleBean();
		result.setCode(100);
		result.setMsg("请求失败");
		return result;
	}

	public static MsgSimpleBean fail(String errorMsg){
		MsgSimpleBean result = new MsgSimpleBean();
		result.setCode(100);
		result.setMsg(errorMsg);
		return result;
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


	
	
	
}
