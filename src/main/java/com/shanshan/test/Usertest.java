package com.shanshan.test;


import org.junit.Assert;
import java.util.Random;

import io.swagger.client.model.RegisterUsers;
import io.swagger.client.model.User;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shanshan.chatapi.impl.IMUserApiImpl;



public class Usertest {
	private static final Logger logger=LoggerFactory.getLogger(Usertest.class);
    
	private IMUserApiImpl userApi=new  IMUserApiImpl();
	@Test
	public void createUser() {
		 RegisterUsers users = new RegisterUsers();
		 User user = new User().username("aaaa1").password("123456");
		 users.add(user);
		 Object result=userApi.createNewIMUserSingle(users);
		 logger.info(result.toString());
		 Assert.assertNotNull(result);
	}
	   @Test
	    public void getUserByName() {
	        String userName = "aaaa1";
	        Object result = userApi.getIMUserByUserName(userName);
	        logger.info(result.toString());
	}

}
