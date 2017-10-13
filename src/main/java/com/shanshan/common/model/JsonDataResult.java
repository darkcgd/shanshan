package com.shanshan.common.model;

public class JsonDataResult<T> extends JsonResult{
	
	

	public JsonDataResult() {
		super("200","操作成功");
	}

	public JsonDataResult(String errorCode, String msg) {
		super(errorCode, msg);
	}

	private T data;

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}
	
}
