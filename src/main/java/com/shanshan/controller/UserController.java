package com.shanshan.controller;

import com.shanshan.bean.MsgBean;
import com.shanshan.bean.MsgSimpleBean;
import com.shanshan.bean.SmsCodeBean;
import com.shanshan.bean.UserBean;
import com.shanshan.service.SmsCodeService;
import com.shanshan.service.TokenService;
import com.shanshan.service.UserService;
import com.shanshan.util.BaseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Map;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	SmsCodeService smsCodeService;
	@Autowired
	TokenService tokenService;

	/**
	 * 用户保存(注册)
	 *
	 *
	 * @return
	 */
	@RequestMapping(value="/userRegist",method=RequestMethod.GET)
	@ResponseBody
	public Object regist(@RequestParam(value = "phone", required=false)String phone
			,@RequestParam(value = "userId", required=false) Integer userId
			,@RequestParam(value = "smsCode", required=false) String smsCode
			,@RequestParam(value = "userName", required=false) String userName
			,@RequestParam(value = "company", required=false) String company
	){
		if(BaseUtil.isEmpty(phone)){
			return MsgSimpleBean.fail("请输入手机号码");
		}
		if(!BaseUtil.isPhone(phone)){
			return MsgSimpleBean.fail("手机格式不正确");
		}
		if(BaseUtil.isEmpty(smsCode)){
			return MsgSimpleBean.fail("请输入验证码");
		}
		if(BaseUtil.isEmpty(userId)){
			return MsgSimpleBean.fail("请先微信授权");
		}

		UserBean userById = userService.getUserById(userId);
		if(userById==null){
			return MsgSimpleBean.fail("该授权用户不存在");
		}


		UserBean registedUserBean = userService.isRegisted(phone);
		if(registedUserBean!=null){
			return MsgSimpleBean.fail("该手机已注册");
		}

		SmsCodeBean smsCodeBean = smsCodeService.checkSmsByPhone(phone);
		if(smsCodeBean==null){
			return MsgSimpleBean.fail("验证码已过期");
		}else{
			if (!smsCode.equals(smsCodeBean.getSmsCode())) {
				return MsgSimpleBean.fail("验证码不正确");
			}
		}
		userById.setPhone(phone);

		if(BaseUtil.isNotEmpty(userName)){
			userById.setUserName(userName);
		}
		if(BaseUtil.isNotEmpty(company)){
			userById.setCompany(company);
		}
		userService.updateUserInfo(userById);
		UserBean userByName = userService.isRegisted(phone);
		if(userByName!=null){
			String token = tokenService.generateToken(userByName.getUserId(),0);
			MsgBean msg = MsgBean.success("注册成功");
			Map<String, Object> data = msg.getData();
			hanlderResponseData(data,userByName);
			smsCodeService.deleteSmsCode(phone);
			return msg;
		}else{
			return MsgBean.fail("注册失败");
		}
	}


	/**
	 * 用户登录(账号密码)
	 * @param phone
	 * @param smsCode
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/userLogin")
	public Object login(@RequestParam(value = "phone", required=false)String phone, @RequestParam(value = "smsCode", required=false)String smsCode){
		if(BaseUtil.isEmpty(phone)){
			return MsgSimpleBean.fail("请输入手机号码");
		}
		if(!BaseUtil.isPhone(phone)){
			return MsgSimpleBean.fail("手机格式不正确");
		}
		if(BaseUtil.isEmpty(smsCode)){
			return MsgSimpleBean.fail("请输入验证码");
		}

		UserBean userByName = userService.isRegisted(phone);
		if(userByName==null){
			return MsgSimpleBean.fail("该手机未注册");
		}

		SmsCodeBean smsCodeBean = smsCodeService.checkSmsByPhone(phone);
		if(smsCodeBean==null){
			return MsgSimpleBean.fail("验证码已过期");
		}else{
			System.out.println(smsCodeBean.getSmsCode());
			if (!smsCode.equals(smsCodeBean.getSmsCode())) {
				return MsgSimpleBean.fail("验证码不正确");
			}
		}

		String token = tokenService.generateToken(userByName.getUserId(),0);

		userByName.setLastLoginTime(new Date());
		userService.updateUserInfo(userByName);//更新最后登录时间
		smsCodeService.deleteSmsCode(phone);
		MsgBean msg = MsgBean.success("登录成功");
		Map<String, Object> data = msg.getData();
		data.put("token",token);
		hanlderResponseData(data,userByName);
		return msg;
	}


	/**
	 * 用户登录(账号密码)
	 * @param userName
	 * @param pwd
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/adminLogin")
	public Object adminLogin(@RequestParam(value = "userName", required=false)String userName, @RequestParam(value = "pwd", required=false)String pwd){
		if(BaseUtil.isEmpty(userName)){
			return MsgSimpleBean.fail("需要传userName参数");
		}
		//先判断用户名是否是合法的表达式;
		/*String regx = "(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})";
		if(!name.matches(regx)){
			return MsgSimpleBean.fail("用户名必须是6-16位数字和字母的组合或者2-5位中文");
		}*/
		if(BaseUtil.isEmpty(pwd)){
			return MsgSimpleBean.fail("需要传pwd参数");
		}

		//数据库用户名重复校验
		UserBean userByName = userService.getUserByName(userName);
		if(userByName!=null){
			if(userByName.getPwd()!=null&&userByName.getPwd().equals(pwd)){
				Integer userType = userByName.getUserType();
				if(BaseUtil.isEmpty(userType)||userType!=4){//不是客服人员
					return MsgSimpleBean.fail("该账号不是客服账号,无法进行该操作");
				}
				String token = tokenService.generateToken(userByName.getUserId(),1);

				userByName.setLastLoginTime(new Date());
				userService.updateUserInfo(userByName);//更新最后登录时间

				MsgBean msg = MsgBean.success("登录成功");
				Map<String, Object> data = msg.getData();
				data.put("token",token);
				hanlderResponseData(data,userByName);
				return msg;
			}else{
				return MsgSimpleBean.fail("密码错误");
			}
		}else{
			return MsgSimpleBean.fail("用户不存在");
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
			hanlderResponseData(data,userById);
			return msg;
		}else{
			return MsgBean.fail("查询不到该用户!");
		}
	}

	/**
	 * 处理响应数据
	 * @param data
	 * @param userBean
	 */
	private void hanlderResponseData(Map<String, Object> data,UserBean userBean){
		data.put("userId", userBean.getUserId());
		data.put("name", userBean.getUserName());
		data.put("company", userBean.getCompany());
		data.put("phone", userBean.getPhone());
		data.put("sex", userBean.getSex());
		data.put("age", userBean.getAge());
		data.put("email", userBean.getEmail());
		data.put("headUrl", userBean.getHeadUrl());
		data.put("provincesCities", userBean.getProvincesCities());
		data.put("departmentName", userBean.getDepartmentName());
		data.put("industry", userBean.getIndustry());
		data.put("equipmentType", userBean.getEquipmentType());


		Integer userType = userBean.getUserType();
		if(BaseUtil.isEmpty(userType)){
			data.put("userType", 2);//1为A级用户 2为B级用户 3为C级用户 4为客服 5为技术专家
		}else{
			data.put("userType", userBean.getUserType());//1为A级用户 2为B级用户 3为C级用户 4为客服 5为技术专家
			if(userType==5){
				data.put("attributes", userBean.getAttributes());
				data.put("experienceYears", userBean.getExperienceYears());
				data.put("expertiseAreas", userBean.getExpertiseAreas());
			}
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
	public MsgSimpleBean isRegisted(@RequestParam(value = "phone", required=false) String phone){
		MsgSimpleBean msg=null;
		if(BaseUtil.isEmpty(phone)){
			msg = MsgSimpleBean.fail("需要传phone参数");
			return msg;
		}
		if(!BaseUtil.isPhone(phone)){
			msg = MsgSimpleBean.fail("手机格式不正确");
			return msg;
		}
		UserBean user = userService.isRegisted(phone);
		if(user!=null){
			msg=MsgSimpleBean.fail("该手机号码已注册!");
		}else{
			msg=MsgSimpleBean.success("该手机号码还没注册!");
		}
		System.out.println(msg.toString());
		return msg;
	}

	/**
	 微信授权用户 即A级用户   type=0
	 注册登录用户  即B级用户   type=1
	 微信授权用户 提交完善信息 升为B级用户               type=2       待审核后  升为C级用户
	 注册登录用户 提交完善信息 本来就是B级用户,不用升     type=3       待审核后  升为C级用户

	 * 修改用户信息(头像,昵称,性别,年龄,生日,手机号码)
	 */
	@ResponseBody
	@RequestMapping(value="/user/updateUserInfo",method=RequestMethod.GET)
	public Object updateUserInfo(UserBean user){
		if(user==null){
			return MsgSimpleBean.fail("请输入更新参数");
		}
		/*String wxOpenId = user.getWxOpenId();
		if(BaseUtil.isEmpty(wxOpenId)){
			return MsgSimpleBean.fail("该用户不是公众号授权用户");
		}*/

		Integer userId = user.getUserId();
		if(BaseUtil.isEmpty(userId)){
			return MsgSimpleBean.fail("需要传userId参数");
		}
		UserBean userById = userService.getUserById(userId);
		if(userById==null){
			return MsgBean.fail("查询不到该用户");
		}

		if(userById.getUserType()==3){
			return MsgBean.fail("您已经是C级用户,无需提交信息");
		}

		/*UserBean userByWxOpenId = userService.getUserByWxOpenId(wxOpenId);
		String phone = userByWxOpenId.getPhone();
		if(BaseUtil.isEmpty(phone)||!BaseUtil.isPhone(phone)){//说明当前用户没手机号  是A级用户  要升为B级用户
			user.setUserType(2);
		}else{//说明当前用户有手机号  是B用户或者C用户
			Integer userType = user.getUserType();
			if(BaseUtil.isEmpty(userType)||userType==1){
				user.setUserType(2);
			}
		}*/

		user.setUserType(2);
		user.setStatus(1);//1待审核 2已审核  默认不用审核

		user.setUpdateTime(new Date());
		userService.updateUserInfo(user);
		return MsgSimpleBean.success("提交成功");
	}


	/**
	 微信授权用户 提交完善信息  待审核后  升为C级用户  //1为A级用户 2为B级用户 3为C级用户 4为客服 5为技术专家
	 注册登录用户 提交完善信息  待审核后  升为C级用户  //1为A级用户 2为B级用户 3为C级用户 4为客服 5为技术专家
	 * 审核用户
	 */
	@ResponseBody
	@RequestMapping(value="/user/verifyUser",method=RequestMethod.GET)
	public Object verifyUser(@RequestParam(value = "userId", required=false) Integer userId){
		if(BaseUtil.isEmpty(userId)){
			return MsgSimpleBean.fail("需要传userId参数");
		}

		UserBean user=new UserBean();
		user.setUserId(userId);
		user.setUserType(3);
		user.setStatus(2);//1待审核 2已审核  默认不用审核
		user.setUpdateTime(new Date());
		userService.updateUserInfo(user);
		return MsgSimpleBean.success("审核成功");
	}


	/**
	 * 修改密码
	 */
	@ResponseBody
	@RequestMapping(value="/user/updatePwd",method=RequestMethod.GET)
	public MsgSimpleBean updatePwd(@RequestParam(value = "userId", required=false) Integer userId,
								   @RequestParam(value = "oldPwd", required=false) String oldPwd,
								   @RequestParam(value = "newPwd", required=false) String newPwd){
		if(BaseUtil.isEmpty(oldPwd)){
			return MsgSimpleBean.fail("需要传oldPwd参数");
		}
		if(BaseUtil.isEmpty(newPwd)){
			return MsgSimpleBean.fail("需要传newPwd参数");
		}
		UserBean userById = userService.getUserById(userId);
		if(userById==null){
			return MsgSimpleBean.fail("该用户不存在");
		}
		if(BaseUtil.isEmpty(userById.getPwd())||!userById.getPwd().equals(oldPwd)){
			return MsgSimpleBean.fail("旧密码错误");
		}
		int updateCount = userService.updatePwd(userId, newPwd);
		return MsgSimpleBean.success("修改成功!");
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
