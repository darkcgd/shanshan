package com.shanshan.common.model;

import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

public class JsonResult {
	
	
	public JsonResult() {
		
	}
	
	
	
	
	public JsonResult (int result, String errorCode, String errorMessage) {
		
		this.result = result;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
	}
	
	
	public JsonResult (int result, String errorCode, BindingResult errors) {
		this.result = result;
		this.errorCode = errorCode;
		StringBuffer sb = new StringBuffer();
		sb.append("参数验证失败，共有").append(errors.getErrorCount()).append("个错误：");
		for (ObjectError error : errors.getAllErrors()) {
			sb.append(error.getDefaultMessage()).append(",");
		}
		this.errorMessage = sb.toString();
	}
	
	
	public JsonResult  setError(int result, String errorCode, String errorMessage) {
		
		this.result = result;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
		return this;
	}
	
	




	public static final int RESULT_S = 0;
	public static final int RESULT_F = 1;
	
	private int result;
	
	private String errorCode;
	
	private String errorMessage;

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	
	
	
	
	
	
}
