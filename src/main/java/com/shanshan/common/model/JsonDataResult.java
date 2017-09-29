package com.shanshan.common.model;

import org.springframework.validation.BindingResult;

public class JsonDataResult<T> extends JsonResult{
	
	

	public JsonDataResult() {
		super();
	}

	public JsonDataResult(int result, String errorCode, BindingResult errors) {
		super(result, errorCode, errors);
	}

	public JsonDataResult(int result, String errorCode, String errorMessage) {
		super(result, errorCode, errorMessage);
	}

	private T datas;
	
	private long recordCount;

	public T getDatas() {
		return datas;
	}

	public void setDatas(T datas) {
		this.datas = datas;
	}
	
	public long getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(long recordCount) {
		this.recordCount = recordCount;
	}
	
	
	
}
