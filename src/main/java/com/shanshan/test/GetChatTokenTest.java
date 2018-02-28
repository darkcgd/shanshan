package com.shanshan.test;

import io.swagger.client.ApiException;

import  org.junit.Assert;


import org.junit.Test;

import com.shanshan.chatapi.impl.ChatAuthToken;


public class GetChatTokenTest {
	private ChatAuthToken chatAuthToken=new ChatAuthToken();

	@Test
	public void test() throws ApiException {
		System.out.println(chatAuthToken.getAuthToken());
		 Assert.assertNotNull(chatAuthToken.getAuthToken());
	}

}
