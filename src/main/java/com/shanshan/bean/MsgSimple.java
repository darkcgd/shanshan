package com.shanshan.bean;

/**
 * 通用的返回的类
 * 
 * @author cgd
 * 
 */
public class MsgSimple {
	//状态码   100-成功    200-失败
	private int code;
	//提示信息
	private String msg;

	public static MsgSimple success(){
		MsgSimple result = new MsgSimple();
		result.setCode(100);
		result.setMsg("请求成功");
		return result;
	}

	public static MsgSimple success(String successMsg){
		MsgSimple result = new MsgSimple();
		result.setCode(100);
		result.setMsg(successMsg);
		return result;
	}
	
	public static MsgSimple fail(){
		MsgSimple result = new MsgSimple();
		result.setCode(200);
		result.setMsg("请求失败");
		return result;
	}

	public static MsgSimple fail(String errorMsg){
		MsgSimple result = new MsgSimple();
		result.setCode(200);
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
