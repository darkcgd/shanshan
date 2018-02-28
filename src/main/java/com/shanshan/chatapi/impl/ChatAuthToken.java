package com.shanshan.chatapi.impl;

import com.shanshan.chatapi.AuthTokenApi;
import com.shanshan.util.ChatGetTokenUtil;

public class ChatAuthToken implements AuthTokenApi {

	@Override
	public Object getAuthToken() {
		// TODO Auto-generated method stub
		return ChatGetTokenUtil.getAccessToken();
	}

}
