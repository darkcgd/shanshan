package com.shanshan.controller;

import com.shanshan.bean.MsgBean;
import com.shanshan.bean.MsgSimple;
import com.shanshan.bean.UserBean;
import com.shanshan.service.TokenService;
import com.shanshan.service.UserService;
import com.shanshan.util.BaseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	TokenService tokenService;

	/**
	 * 用户保存(注册)
	 * 1、支持JSR303校验
	 * 2、导入Hibernate-Validator
	 *
	 *
	 * @return
	 */
	@RequestMapping(value="/userRegist",method=RequestMethod.GET)
	@ResponseBody
	public MsgBean regist(@Valid UserBean user, BindingResult result){
		if(result.hasErrors()){
			//校验失败，应该返回失败，在模态框中显示校验失败的错误信息
			Map<String, Object> map = new HashMap<>();
			List<FieldError> errors = result.getFieldErrors();
			for (FieldError fieldError : errors) {
				System.out.println("错误的字段名："+fieldError.getField());
				System.out.println("错误信息："+fieldError.getDefaultMessage());
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return MsgBean.fail().add("errorFields", map);
		}else{
			userService.saveUser(user);
			UserBean userByName = userService.getUserByName(user.getUserName());
			if(userByName!=null){
				String token = tokenService.generateToken(userByName.getUserId(),0);

				MsgBean msg = MsgBean.success("注册成功");
				Map<String, Object> data = msg.getData();
				data.put("user_id", userByName.getUserId());
				data.put("user_name", userByName.getUserName());
				data.put("user_token", token);
				data.put("user_phone", userByName.getPhone());
				data.put("user_sex", userByName.getSex());
				data.put("user_email", userByName.getEmail());
				System.out.println(userByName.getUserName()+"注册成功!");
				return msg;
			}else{
				return MsgBean.fail("注册失败");
			}
		}
	}

	/**
	 * 用户登录(账号密码)
	 * @param name
	 * @param pwd
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/userLogin")
	public Object login(@RequestParam(value = "name", required=false)String name, @RequestParam(value = "pwd", required=false)String pwd){
		if(BaseUtil.isEmpty(name)){
			return MsgSimple.fail("需要传name参数");
		}
		//先判断用户名是否是合法的表达式;
		String regx = "(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})";
		if(!name.matches(regx)){
			return MsgSimple.fail("用户名必须是6-16位数字和字母的组合或者2-5位中文");
		}
		if(BaseUtil.isEmpty(pwd)){
			return MsgSimple.fail("需要传pwd参数");
		}

		//数据库用户名重复校验
		UserBean userByName = userService.getUserByName(name);
		if(userByName!=null){
			if(userByName.getPwd()!=null&&userByName.getPwd().equals(pwd)){
				String token = tokenService.generateToken(userByName.getUserId(),0);

				userByName.setLastLoginTime(new Date());
				userService.updateUserInfo(userByName);//更新最后登录时间

				MsgBean msg = MsgBean.success("登录成功");
				Map<String, Object> data = msg.getData();
				data.put("userId", userByName.getUserId());
				data.put("name", userByName.getUserName());
				data.put("token", token);
				data.put("phone", userByName.getPhone());
				data.put("sex", userByName.getSex());
				data.put("age", userByName.getAge());
				data.put("email", userByName.getEmail());
				data.put("headUrl", userByName.getHeadUrl());
				data.put("userType", 0);//0代表普通用户登录 1代表商家
				return msg;
			}else{
				return MsgBean.fail("密码错误");
			}
		}else{
			return MsgBean.fail("用户不存在");
		}
	}


	/**
	 * 查询用户信息
	 * @param userId
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/user/getUserInfo",method=RequestMethod.GET)
	public MsgBean getUserInfo(@RequestParam(value = "userId", required=false) Integer userId, HttpServletRequest request){
		if(BaseUtil.isEmpty(userId)){
			MsgBean msg = MsgBean.fail("需要传userId参数");
			return msg;
		}
		UserBean userById = userService.getUserById(userId);
		if(userById!=null){
			MsgBean msg = MsgBean.success("获取成功");
			Map<String, Object> data = msg.getData();
			data.put("user_id", userById.getUserId());
			data.put("user_name", userById.getUserName());
			data.put("user_phone", userById.getPhone());
			data.put("user_sex", userById.getSex());
			data.put("user_email", userById.getEmail());
			return msg;
		}else{
			return MsgBean.fail("查询不到该用户!");
		}
	}

	/**
	 注册(用户名或手机号码注册)
	 登录
	 用户名是否已注册
	 手机号码是否已注册
	 获取用户信息
	 修改用户信息(头像,昵称,性别,年龄,生日,手机号码)
	 修改密码
	 忘记密码
	 发送验证码
	 */
	/**
	 手机号码是否已注册
	 */
	@ResponseBody
	@RequestMapping(value="/isRegisted",method=RequestMethod.GET)
	public MsgSimple isRegisted(@RequestParam(value = "phone", required=false) String phone){
		MsgSimple msg=null;
		if(BaseUtil.isEmpty(phone)){
			msg = MsgSimple.fail("需要传phone参数");
			return msg;
		}
		if(!BaseUtil.isPhone(phone)){
			msg = MsgSimple.fail("手机格式不正确");
			return msg;
		}
		UserBean user = userService.isRegisted(phone);
		if(user!=null){
			msg=MsgSimple.fail("该手机号码已注册!");
		}else{
			msg=MsgSimple.success("该手机号码还没注册!");
		}
		return msg;
	}

	/**
	 * 修改用户信息(头像,昵称,性别,年龄,生日,手机号码)
	 */
	@ResponseBody
	@RequestMapping(value="/user/updateUserInfo",method=RequestMethod.GET)
	public Object updateUserInfo(@Valid UserBean user, BindingResult result){
		if(result.hasErrors()){
			//校验失败，应该返回失败，在模态框中显示校验失败的错误信息
			Map<String, Object> map = new HashMap<>();
			List<FieldError> errors = result.getFieldErrors();
			for (FieldError fieldError : errors) {
				System.out.println("错误的字段名："+fieldError.getField());
				System.out.println("错误信息："+fieldError.getDefaultMessage());
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return MsgBean.fail().add("errorFields", map);
		}else{
			user.setUpdateTime(new Date());
			int updateCount = userService.updateUserInfo(user);
			return MsgSimple.success("更新成功!");
		}
	}

	/**
	 * 修改密码
	 */
	@ResponseBody
	@RequestMapping(value="/user/updatePwd",method=RequestMethod.GET)
	public MsgSimple updatePwd(@RequestParam(value = "userId", required=false) Integer userId,
							   @RequestParam(value = "oldPwd", required=false) String oldPwd,
							   @RequestParam(value = "newPwd", required=false) String newPwd){
		if(BaseUtil.isEmpty(oldPwd)){
			return MsgSimple.fail("需要传oldPwd参数");
		}
		if(BaseUtil.isEmpty(newPwd)){
			return MsgSimple.fail("需要传newPwd参数");
		}
		UserBean userById = userService.getUserById(userId);
		if(userById==null){
			return MsgSimple.fail("该用户不存在");
		}
		if(BaseUtil.isEmpty(userById.getPwd())||!userById.getPwd().equals(oldPwd)){
			return MsgSimple.fail("旧密码错误");
		}
		int updateCount = userService.updatePwd(userId, newPwd);
		//if(updateCount>0){
		return MsgSimple.success("修改成功!");
		//}
		//return MsgSimple.fail("更新失败!");
	}

	/**
	 * 忘记密码
	 */
	public void forgetPwd(){

	}

	/**
	 * 发送验证码
	 */
	public void sendCode(){

	}

}
