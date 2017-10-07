package com.shanshan.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.shanshan.bean.ActivityBean;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.service.ActivityService;

/**
 * 活动
 * @author PH_Zhou
 *
 */
@Controller
@RequestMapping( "/activity" )
public class ActivityController {

	private ActivityService activityService;
	
	/**
	 * 活动列表
	 * @return
	 */
	@RequestMapping("/activityList")
	@ResponseBody
	public JsonResult articleList(ActivityBean entity, PageRequest page) {
		JsonDataResult<List<ActivityBean>> result = new JsonDataResult<>();
		Page<ActivityBean> datas = activityService.activityList(entity, page);
		result.setDatas(datas);
		return result;
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
			result.setErrorCode("活动id不能为空!");
			return result;
		}
		ActivityBean data = activityService.activityDetail(entity);
		result.setDatas(data);
		return result;
	}
	
}
