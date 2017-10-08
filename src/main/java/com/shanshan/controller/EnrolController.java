package com.shanshan.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.shanshan.bean.EnrollBean;
import com.shanshan.common.model.JsonDataResult;
import com.shanshan.common.model.JsonResult;
import com.shanshan.common.model.PageRequest;
import com.shanshan.service.EnrolService;

/**
 * 培训报名
 * @author PH_Zhou
 *
 */
@Controller
@RequestMapping( "/enrol" )
public class EnrolController {

	@Autowired
	private EnrolService enrolService;
	
	/**
	 * 报名
	 * @return
	 */
	@RequestMapping("/saveOrupdate")
	@ResponseBody
	public JsonResult saveOrupdate(@Valid EnrollBean entity, BindingResult errors) {
		
		// 参数验证
		if (errors.hasErrors()) {
			return new JsonDataResult<List<String>>(JsonResult.RESULT_F, "500", errors);
		}
		
		return enrolService.save(entity);
		
	}
	
	/**
	 * 本人活动报名记录
	 * @return
	 */
	@RequestMapping("/enrollList")
	@ResponseBody
	public JsonResult enrollList(EnrollBean entity, PageRequest page) {
		JsonDataResult<List<EnrollBean>> result = new JsonDataResult<>();
		Page<EnrollBean> datas = enrolService.enrollList(entity, page);
		result.setDatas(datas);
		return result;
		
	}
	
}
