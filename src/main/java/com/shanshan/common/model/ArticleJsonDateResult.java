package com.shanshan.common.model;

import java.util.List;

public class ArticleJsonDateResult {

	public ArticleJsonDateResult () {
		
	}
	
	public ArticleJsonDateResult (String errno) {
		this.errno = errno;
	}
	
	private String errno = "0";
	private List<String> data;
	public String getErrno() {
		return errno;
	}
	public void setErrno(String errno) {
		this.errno = errno;
	}
	public List<String> getData() {
		return data;
	}
	public void setData(List<String> data) {
		this.data = data;
	}
}
