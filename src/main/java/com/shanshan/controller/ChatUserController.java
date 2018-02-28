package com.shanshan.controller;

import java.util.Map;

import io.swagger.client.model.RegisterUsers;
import io.swagger.client.model.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shanshan.bean.ChatUserInfo;
import com.shanshan.bean.MsgBean;
import com.shanshan.chatapi.impl.IMUserApiImpl;
import com.shanshan.util.AbMd5;
import com.shanshan.util.BaseUtil;

@Controller
@RequestMapping("/chatUser")
public class ChatUserController {
	private IMUserApiImpl iMUserApiImpl=new IMUserApiImpl();
   
  /**
   * 创建环信聊天用户
   * @param phone
   * @param password
   * @param nickName
   * @return
   */
	 @RequestMapping(value="/createUser",method={RequestMethod.GET,RequestMethod.POST})
	 @ResponseBody
    public Object CreateChatUser(@RequestParam(value="phone",required=false) String phone
    		            ,@RequestParam(value="password",required=false) String password
    		            ,@RequestParam(value="nickName",required=false) String nickName){
    	String username="A"+phone;
    	String pwd="";
    	if(BaseUtil.isEmpty(password)){
    	    pwd=AbMd5.MD5(phone);	
    	}else{
    		pwd=AbMd5.MD5(password);
    	} 
    	RegisterUsers users = new RegisterUsers();
    	User user=new User().username(username).password(pwd);
    	users.add(user);
    	Object result=iMUserApiImpl.createNewIMUserSingle(users);
    	 ChatUserInfo chatUserInfo=new ChatUserInfo();
    	if(result!=null){
    		try {
    			JSONArray jsonArr=JSONArray.fromObject(result);
     		    JSONObject json=jsonArr.getJSONObject(5);
                chatUserInfo.setUuid(json.getString("uuid"));
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}  		   
    	       MsgBean msg=MsgBean.success("创建成功");
    	       Map<String, Object> data = msg.getData();
    	       data.put("data", chatUserInfo);
    	       return msg;
    	} 
    	
    	return MsgBean.fail("用户已经注册");
    }
}
