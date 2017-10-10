package com.shanshan.controller;

import com.shanshan.base.BaseController;
import com.shanshan.bean.MsgBean;
import com.shanshan.bean.TagBean;
import com.shanshan.bean.UserBean;
import com.shanshan.service.TagService;
import com.shanshan.util.AbDateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class TestController extends BaseController{
	@ResponseBody
	@RequestMapping(value="/test",method=RequestMethod.GET)
	public ModelAndView doTest(){
		UserBean userBean=new UserBean();
		userBean.setUserId(61);
		userBean.setUserName("Dark");
		userBean.setUserType(3);
		ModelAndView mad = new ModelAndView("test");
		//将数据存入modelMap
		mad.addObject("text", "您还好吗");
		mad.addObject("userBean",userBean);//默认为类名的首字母小写
		mad.addObject("user", "这是用户信息");
		return mad;
	}
}
