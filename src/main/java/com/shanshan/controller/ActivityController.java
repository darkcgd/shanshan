package com.shanshan.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shanshan.base.BaseController;
import com.shanshan.bean.ActivityBean;
import com.shanshan.bean.ArticleBean;
import com.shanshan.bean.MsgBean;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.service.ActivityService;
import com.shanshan.util.Constant;

/**
 * 活动
 * @author PH_Zhou
 *
 */
@Controller
@RequestMapping( "/activity" )
public class ActivityController extends BaseController {

	@Autowired
	private ActivityService activityService;
	
	/**
	 * 活动列表
	 * @return
	 */
	@RequestMapping("/activityList")
	@ResponseBody
	public Object activityList(ActivityBean entity,
			@RequestParam(value = "pagerNumber", defaultValue = "" + Constant.DefaultPagerNumber) Integer pagerNumber,
			@RequestParam(value = "pagerSize", defaultValue = "" + Constant.DefaultPagerSize) Integer pagerSize) {
		PageHelper.startPage(pagerNumber, pagerSize);
		List<ActivityBean> articleList = activityService.activityList(entity);

		MsgBean msg = MsgBean.success("获取成功");
		Map<String, Object> data = msg.getData();

		handlerPageInfoAdmin(data, new PageInfo(articleList, pagerSize));

		data.put("list", articleList);
		return msg;
	}
	
	/**
	 * 活动详情
	 * @return
	 */
	@RequestMapping("/activityDetail")
	@ResponseBody
	public JsonResult activityDetail(ActivityBean entity) {
		JsonDataResult<ActivityBean> result = new JsonDataResult<>();
		
		if (null == entity.getActivityId() || 0 == entity.getActivityId()) {
			return new JsonResult("500", "活动id不能为空!");
		}
		
		ActivityBean data = activityService.activityDetail(entity);
		result.setData(data);
		return result;
	}
	
}
