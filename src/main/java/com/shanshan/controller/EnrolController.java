package com.shanshan.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shanshan.base.BaseController;
import com.shanshan.bean.ActivityBean;
import com.shanshan.bean.EnrollBean;
import com.shanshan.bean.MsgBean;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.common.model.UserUtils;
import com.shanshan.service.EnrolService;
import com.shanshan.util.Constant;

/**
 * 培训报名
 * @author PH_Zhou
 *
 */
@Controller
@RequestMapping( "/enrol" )
public class EnrolController extends BaseController {

	@Autowired
	private EnrolService enrolService;
	
	/**
	 * 需登录下操作
	 * 
	 * 报名或者修改报名信息
	 * @return
	 */
	@RequestMapping("/saveOrupdate")
	@ResponseBody
	public JsonResult saveOrupdate( @Valid @RequestBody EnrollBean entity, BindingResult errors, HttpServletRequest request) {
		
		String userId = UserUtils.getUserId(request);
		// 参数验证
		if (errors.hasErrors()) {
			return new JsonResult("500", "参数校验失败");
		}
		
		return enrolService.save(entity, userId);
		
	}
	
	/**
	 * 本人活动报名记录
	 * @return
	 */
	@RequestMapping("/enrollList")
	@ResponseBody
	public Object enrollList(EnrollBean entity,
			@RequestParam(value = "pagerNumber", defaultValue = "" + Constant.DefaultPagerNumber) Integer pagerNumber,
			@RequestParam(value = "pagerSize", defaultValue = "" + Constant.DefaultPagerSize) Integer pagerSize, 
			HttpServletRequest request) {
		
		String userId = UserUtils.getUserId(request);
		
		
		PageHelper.startPage(pagerNumber, pagerSize);
		List<EnrollBean> articleList = enrolService.enrollList(entity, userId);

		MsgBean msg = MsgBean.success("获取成功");
		Map<String, Object> data = msg.getData();

		handlerPageInfoAdmin(data, new PageInfo(articleList, pagerSize));

		data.put("list", articleList);
		return msg;
		
	}
	
}
