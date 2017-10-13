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
import com.shanshan.bean.MsgBean;
import com.shanshan.bean.TrainingCourseBean;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.service.TrainingCourseService;
import com.shanshan.util.Constant;

/**
 * 培训课程
 * @author PH_Zhou
 *
 */
@Controller
@RequestMapping( "/trainingCourse" )
public class TrainingCourseController extends BaseController {

	@Autowired
	private TrainingCourseService trainingCourseService;
	
	/**
	 * 活动列表
	 * @return
	 */
	@RequestMapping("/trainingCourseList")
	@ResponseBody
	public Object trainingCourseList(TrainingCourseBean entity,
			@RequestParam(value = "pagerNumber", defaultValue = "" + Constant.DefaultPagerNumber) Integer pagerNumber,
			@RequestParam(value = "pagerSize", defaultValue = "" + Constant.DefaultPagerSize) Integer pagerSize) {
		PageHelper.startPage(pagerNumber, pagerSize);
		List<TrainingCourseBean> trainingCourseList = trainingCourseService.trainingCourseList(entity);

		MsgBean msg = MsgBean.success("获取成功");
		Map<String, Object> data = msg.getData();

		handlerPageInfoAdmin(data, new PageInfo(trainingCourseList, pagerSize));

		data.put("list", trainingCourseList);
		return msg;
	}
	
	/**
	 * 活动详情
	 * @return
	 */
	@RequestMapping("/trainingCourseDetail")
	@ResponseBody
	public JsonResult trainingCourseDetail(TrainingCourseBean entity) {
		JsonDataResult<TrainingCourseBean> result = new JsonDataResult<>();
		
		if (null == entity.getTrainingCourseId() || 0 == entity.getTrainingCourseId()) {
			return new JsonResult("500", "参数校验失败");
		}
		
		TrainingCourseBean data = trainingCourseService.trainingCourseDetail(entity);
		result.setData(data);
		return result;
	}
	
}
