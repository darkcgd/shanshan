package com.shanshan.common.model;

public class JsonResult {
	
	
	public JsonResult() {
		
	}
	
	
	
	
	public JsonResult (String code, String msg) {
		
		this.code = code;
		this.msg = msg;
	}
	

	private String code;
	
	private String msg;

	public String getCode() {
		return code;
	}




	public void setCode(String code) {
		this.code = code;
	}




	public String getMsg() {
		return msg;
	}




	public void setMsg(String msg) {
		this.msg = msg;
	}

}
