package com.shanshan.chatapi.impl;

import io.swagger.client.ApiException;
import io.swagger.client.api.UsersApi;
import io.swagger.client.model.RegisterUsers;

import com.shanshan.chatapi.IMUserApi;
import com.shanshan.util.ChatGetTokenUtil;
import com.shanshan.util.ChatOrgInfo;
import com.shanshan.util.ChatResponseHander;
import com.shanshan.util.EasemobAPI;

public class IMUserApiImpl implements IMUserApi {
	private UsersApi api=new UsersApi();
	private ChatResponseHander  responseHander=new ChatResponseHander();

	@Override
	public Object createNewIMUserSingle(final Object payload) {
		// TODO Auto-generated method stub
		return responseHander.handle(new EasemobAPI() {
			
			@Override
			public Object invokeEasemobAPI() throws ApiException {
				// TODO Auto-generated method stub
				return api.orgNameAppNameUsersPost(ChatOrgInfo.Org_Name,ChatOrgInfo.App_Name, (RegisterUsers) payload,ChatGetTokenUtil.getAccessToken());
			}
		});
	}

	@Override
	public Object createNewIMUserBatch(Object payload) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getIMUserByUserName(String userName) {
		// TODO Auto-generated method stub
		 return responseHander.handle(new EasemobAPI() {
			
			@Override
			public Object invokeEasemobAPI() throws ApiException {
				// TODO Auto-generated method stub
				return api.orgNameAppNameUsersUsernameGet(ChatOrgInfo.Org_Name,ChatOrgInfo.App_Name,ChatGetTokenUtil.getAccessToken(),userName);
			}
		});
	}
	
	

	@Override
	public Object getIMUsersBatch(Long limit, String cursor) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object deleteIMUserByUserName(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object deleteIMUserBatch(Long limit, String cursor) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object modifyIMUserPasswordWithAdminToken(String userName,
			Object payload) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object modifyIMUserNickNameWithAdminToken(String userName,
			Object payload) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object addFriendSingle(String userName, String friendName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object deleteFriendSingle(String userName, String friendName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getFriends(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getBlackList(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object addToBlackList(String userName, Object payload) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object removeFromBlackList(String userName, String blackListName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getIMUserStatus(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getOfflineMsgCount(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getSpecifiedOfflineMsgStatus(String userName, String msgId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object deactivateIMUser(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object activateIMUser(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object disconnectIMUser(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getIMUserAllChatGroups(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getIMUserAllChatRooms(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
